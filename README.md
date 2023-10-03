# （二）FPGA IP核使用教程——单端口RAM

# 0 致读者
此篇为专栏 **《FPGA学习笔记》** 的第二篇，记录我的学习FPGA的一些开发过程和心得感悟，刚接触FPGA的朋友们可以先去此专栏置顶 [《FPGA零基础入门学习路线》](http://t.csdnimg.cn/T0Qw2)来做最基础的扫盲。

本篇内容基于笔者实际开发过程和正点原子资料撰写，将会详细讲解此FPGA实验的全流程，**诚挚**地欢迎各位读者在评论区或者私信我交流！

本文的工程文件**开源地址**如下（基于ZYNQ7020，大家 **clone** 到本地就可以直接跑仿真，如果要上板请根据自己的开发板更改约束即可）：

> [https://github.com/ChinaRyan666/FPGA-IP-OneRAM](https://github.com/ChinaRyan666/FPGA-IP-OneRAM)



# 1 实验任务

> 本章实验任务是将 **Xilinx BMG IP** 核配置成一个单端口的 **RAM** 并对其进行读写操作，然后通过仿真观察波形是否正确，最后将设计下载到 FPGA 开发板中，并通过在线调试工具对实验结果进行验证。

# 2 RAM简介

在了解 RAM IP 核之前，我们先来看下存储器的大致分类，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/c493348aebda4bfb9ea387e35a6b8fcc.png)

由上图可知， 存储器包括**随机存储器**和**只读存储器**，随机存储器包括**静态 RAM** 和**动态 RAM**。**静态 RAM** 只要有供电，它保存的数据就不会丢失；而**动态 RAM** 在供电的情况下，还需要根据其要求的时间来对存储的数据进行刷新，才能保持存储的数据不会丢失。

> **静态 RAM** 一般包括**单端口 RAM（Single Port RAM，缩写为 SP RAM）**、**简单双端口 RAM（Simple Dual Port RAM，缩写为 SDP RAM，也叫伪双端口 RAM）** 和 **真双端口 RAM（True Dual Port RAM，缩写为 TDP RAM）**。静态 RAM 的特点是存储容量相对不是很大，但是**读写速度非常高**，其在 FPGA 或者 ASIC 设计中都属于非常重要的器件，可以说查找表、寄存器、组合逻辑和静态 RAM 构成了整个数字电路体系，足见静态 RAM 的重要性。

>**动态 RAM** 一般包括 **SDRAM** 和 **DDR SDRAM**。 目前 DDR SDRAM 已经从 DDR1 代发展到 DDR5 代了， DDR3 和 DDR4 SDRAM 是目前非常主流的存储器，大量使用在电脑、嵌入式和 FPGA 板卡上面， 其特点是**存储容量非常大**、但是读写速度相比于静态 RAM 会稍低一些，这一点在数据量较少的情况下尤为明显。

> **只读存储器**一般包括 **PROM、 EPROM 和 EEPROM** 等，是**非易失性**的存储器。目前使用率较高的是EEPROM，其特点是**容量相对较小**，存储的一般是器件的配置参数信息，例如 USB 2.0 芯片一般会配有一个EEPROM 来存储相关的固件信息。

本文我们学习的 RAM 属于**静态 RAM**，我们重点看下几种**静态 RAM** 的特性与区别：

![在这里插入图片描述](https://img-blog.csdnimg.cn/23d6b9e8c2d54089a97ed777b2d77fea.png)

从上图可以看出，**单端口 RAM** 只有一个端口进行读写，即读/写只能通过这一个端口来进行。对于**伪双端口 RAM** 而言，其也有两个端口可以用于读写，但是其中一个端口只能读不能写，另一个端口只能写不能读；对于**真双端口 RAM** 而言，其有两个端口可以用于读写，且两个端口都可以进行读或写；

**不同的特性决定不同的应用场景**，在 RAM 的实际应用中，我们一般根据功能需求和带宽需求来选择合适的 RAM 类型，例如：

 1. 当我们需要读取一个配置，且这个配置**只在上电的时候配置一次，其他时候不需要写操作**，那么我们直接选择**单端口 RAM** 即可，通过一个端口要么进行写操作，要么进行读操作。
 2. 当我们**需要使用 FIFO（先进先出存储器）来存储数据**，就可以选择**伪双端口 RAM**，一个写端口，一个读端口，且读写可以同时进行。
 3. 当我们想要**实现一个对 10000 节车厢的人数进行统计的功能**，每节车厢有两个门，一个门仅用于上车，另一个门仅用于下车，有人上车时需要在原有的人数基础上加一，有人下车时需要在原有的人数基础上减一，每时每刻都可能有人上下车，那么要使用逻辑统计这么多节车厢的人数时，就**需要有两个写端口的RAM**，深度为 10000（对应 10000 节车厢），这时就要选择**真双端口 RAM** 了。因为如果单纯的使用寄存器资源进行统计的话，仅这 10000 节车厢的计数就很可能把 FPGA 的寄存器资源消耗殆尽了。


通过上述的学习，想必大家已经对几种 RAM 的区别有了一定的了解，那么现在我们就回到实际应用中来。 在 FPGA 设计中 RAM 主要用于存放程序和数据，在 RAM 的实际使用过程中，我们一般**将其作为关键数据的临时存储**。 接下来我们就介绍一下 **Vivado 中的 RAM IP 核**。

> Vivado 软件自带的 **Block Memory Generator IP 核（缩写为 BMG， 中文名为块 RAM 生成器）**，可以用来配置生成 **RAM** 或者 **ROM**。 **RAM** 是一种随机存取存储器，不仅可以**读出**存储的数据，同时还支持对存储的数据进行**修改**，而 **ROM** 是一种只读存储器，也就是说，在工作时**只能读出数据，而不能写入数据**。
> 	需要注意的是，配置生成的 **RAM** 或者 **ROM** 使用的都是 FPGA 内部的 **BRAM 资源（Block RAM，即块随机存储器，是 FPGA 厂商在逻辑资源之外，给 FPGA 加入的专用 RAM 块资源）**，只不过配置成 **ROM** 时只用到了**嵌入式 BRAM** 的读数据端口。本文我们主要介绍如何将 **BMG IP** 核配置成 **RAM**。


这里有个地方需要大家注意一下， Xilinx 7 系列器件内部的 **BRAM** 全部是**真双端口 RAM**，但是通过**BMG IP 核**，我们还可以将其配置为**伪双端口 RAM** 或者**单端口 RAM**。

有关**双端口 RAM** 的内容我们将在下一篇博客进行讲解，本文我们围绕**单端口 RAM** 进行讲解。

**BMG IP 核**配置成**单端口 RAM** 的框图如下图所示。


![在这里插入图片描述](https://img-blog.csdnimg.cn/0b013ccda3bc4cfa9cf35f695d35633b.png)

**各个端口的功能描述**如下：

![在这里插入图片描述](https://img-blog.csdnimg.cn/9f06a6b59ff34badbfbe5175b546b7ba.png)


# 3 程序设计

## 3.1 RAM IP核配置

首先我们创建一个名为 **“ip_1port_ram”** 的空白工程，然后点击 Vivado 软件左侧 **“Flow Navigator”** 栏中的 **“IP Catalog”** ，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/c42632fdb86f42728677744d870be8e6.png)

在 **“IP Catalog”** 窗口的搜索栏中输入**“Block Memory”** 关键字后，出现唯一匹配的 **“Block Memory Generator”** ，如下图所示（图中出现的两个 IP 核为同一个 BMG IP 核）：


![在这里插入图片描述](https://img-blog.csdnimg.cn/09e20d21008649fe9ca574dd5d1b3d97.png)


双击 **“Block Memory Generator”** 后弹出 IP 核的配置界面，接着我们就可以对 BMG IP 核进行配置了， **“Basic”** 选项卡配置界面如下图所示。


![在这里插入图片描述](https://img-blog.csdnimg.cn/d1723603c37d4a17b7d2fce1955e6a09.png)

最上面的 **“Component Name”** 一栏可以设置该 IP 元件的名称，这里我们保持默认命名，当然也可以命名为其它方便自己一眼看出其功能的名称。

接着目光回到 **“Basic”** 选项卡上，该选项卡下各参数（我们只重点关注 **“lnterface Type”** 和 **“Memory Type”** 中的内容，其他内容保持默认即可）含义如下：


>“**lnterface Type（接口模式）**” ：有两种接口模式可选，分别为 **Native（常规）接口**和 **AXI4 接口**。 **AXI4 模式**一般是在处理器中的数据需要和 BRAM 交互（如 ZYNQ 中的 PS 和 PL 交互）时才会使用，当不需要与处理器数据进行交互时，我们一般采用 Native 模式，所以本次实验我们选择 Native 模式。

> “**Memory Type（存储类型）**” ：有五种类型可选，分别为“**Single Port RAM（单端口 RAM）** ” 、“**Simple Dual Port RAM（伪双端口 RAM）**” 、 “**True Dual Port RAM（真双端口 RAM）**” 、 “**Single Port ROM（单端口 ROM）**” 和“**Dual Port ROM（双端口 ROM）**” ，因为本章的试验任务是学习单端口 RAM，所以我们选择“**Single Port RAM**” 。

接下来我们对 **“Port A Options”** 选项卡进行配置，如下图所示：


![在这里插入图片描述](https://img-blog.csdnimg.cn/1c0a719f2669437b86777fe929072c9e.png)

我们重点关注 **“Memory Size（内存大小） ”** 中的内容：


> **Write Width**：写数据位宽，单位 bit，本次实验我们设置成 8，可设置的位宽范围为 1~4608。
> **Read Width**：读数据位宽，其位宽设置必须与写数据位宽存在倍数关系（倍数比仅支持 1：1、 1：2、1：4、 1：8、 2：1、 4：1、 8： 1 和 16：1），通常情况下读/写数据位宽保持一致，所以这里设置成 8。
> **Write Depth**：写深度，这里设置成 32，即 RAM 所能访问的地址范围为 0~31。这里有一点需要大家注意，那就是写深度和写位宽的乘积不要超过器件本身的 ram 资源的大小，否则软件会报错。
> **Read Depth**：读深度，当写数据位宽、读数据位宽和写深度的值确定后，读深度的值就会自动确定。

>**Operating Mode**： RAM 运作模式。 该选项决定了我们在进行写操作期间， DOUT（读数据线）上的数据变化， 有三种模式可选，分别为：
> *  Write First（写优先模式）： 当我们在对某个地址进行写操作时，则会将写入的数据传递到读数据线上。
> * Read First（读优先模式）： 当我们在对某个地址进行写操作时，则会将上次写入该地址的数据递到读数据线上。
> * No Change（不变模式）：在该模式下，进行写操作时，读数据线上的数据保持不变。
> 
> 这里我们选择 **No Change** 模式。

>**Enable Port Type**：使能端口类型。有两种可选，分别为 Use ENA pin（添加使能端口 A 信号）和 Always Enabled（取消使能信号，端口 A 一直处于使能状态），这里选择默认的 **Use ENA pin**。

接下来是“**Other Options**” 选项卡，用于设置 **RAM** 的初始值等信息，本次实验不需要设置，保持默认即可。

最后一个是“**Summary**” 选项卡，该界面显示了我们配置的存储器的类型，消耗的 **BRAM** 资源等信息，我们直接点击 **“OK”** 按钮完成 **BMG IP** 核的配置，如下图所示：


![在这里插入图片描述](https://img-blog.csdnimg.cn/20f50c91ed3a4be99ce107ba137202b5.png)

接着就弹出了 **“Generate Output Products”** 窗口，我们直接点击 **“Generate”** 即可，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/d4651871e6754ce09037227dba74f72e.png)

之后我们就可以在 **“Design Run”** 窗口的 **“Out-of-Context Module Runs”** 一栏中看到该 IP 核对应的**run “blk_mem_gen_0_synth_1”** ，其综合过程独立于顶层设计的综合，所以我们可以看到其正在综合，如下图所示：


![在这里插入图片描述](https://img-blog.csdnimg.cn/8464a97751d1420aa9ce17dbe23cc689.png)

接下来我们看下 IP 核的接口时序。




## 3.2 时序图详解

**Xilinx BMG IP** 核提供了三种 **RAM** 读写操作模式，分别为**写优先模式**、**读优先模式**和**不变模式**，针对不同的模式， Xilinx 也给出了不同的时序图。我们想要对 **BMG IP** 核进行读写操作，首先就需要了解其时序，如果读写操作不满足其时序，那么设计的代码就不能达到我们预期的效果，所以此部分就带着大家一起学习在**不同 RAM 读写操作模式下的读写时序**。

 1. **写优先模式**的时序图如下所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/c11b6020f5434c1899181e08bb75197b.png)

>在写优先模式下，当 **ENA（使能信号）** 为高后，第一个时钟上升沿 **WEA（读/写使能信号）** 为低电平，表示读数据，此时的地址为 **aa**，所以读出的就是 **aa** 内的数据；第二个时钟上升沿 **WEA** 为高电平，表示写数据，此时的地址为 **bb**，即先将数据（DAIN） **“1111”** 写入地址 **bb** 后再读出，所以读出的数据也是 **“1111”** ；第三个时钟上升沿同理，将 **DINA** 数据写入存储器后再将更新后的数据送到 **DOUTA** 上进行输出；第四个时钟上升沿 **WEA** 为低电平，表示读数据，读取的就是地址 **dd** 内的数据。

 2. 读优先模式的时序图如下所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/4e063f56255141099e40f29829a42649.png)



>在读优先模式下，当 **ENA（使能信号）** 为高后，第一个时钟上升沿 **WEA** 为低电平，表示读数据，此时的地址为 **aa**，所以读出的就是 **aa** 内的数据；第二个时钟上升沿 **WEA** 为高电平，表示写数据，此时的地址为 **bb**，即先读出地址 **bb** 中的旧数据，然后再将数据（DAIN）**“1111”** 写入地址 **bb**；第三个时钟上升沿同理，先将当前存储器中的旧数据送到 **DOUTA** 上进行输出，然后再将 **DINA** 数据写入当前存储地址；第四个时钟上升沿 **WEA** 为低电平，表示读数据，读取的就是地址 **dd** 内的数据。

 3. 不变模式的时序图如下所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/12a2b5296340436a8c1bcde25384e794.png)

> 在不变模式下，当 **ENA** 和 **WEA** 同时为高时，只进行写操作，读数据保持不变，也就是说 **DOUTA** 保持前一拍数据，直到 **WEA** 为低。


总结一下就是在进行写操作时，**读数据线（DOUT）** 上的数据在**写优先模式**和**读优先模式**下会随着地址的变化而输出相应的数据，在不变模式下则会保持最后一次读操作输出的数据。



## 3.3 顶层模块设计

本次实验的目的是为了将 **Xilinx BMG IP** 核配置成一个单端口的 **RAM** 并对其进行读写操作，因此可以给模块命名为 **ip_1port_ram**。由于**单端口 RAM** 的读写是共用一组信号总线的，所以这里我们将读写操作合成一个模块，可以将其命名为 **ram_rw**；系统时钟和系统复位是一个完整的工程中必不可少的输入端口信号，这里就不再多讲了；因为 **RAM** 主要用于存储程序中的数据，并不需要输出到 **IO** 引脚上，所以本实验不需要输出端口。由上述分析我们可以画出一个大致的模块框图，如下图所示：


![在这里插入图片描述](https://img-blog.csdnimg.cn/e402ee7bdad2447483ad68e2e8359101.png)


模块端口与功能描述如下表所示：


![在这里插入图片描述](https://img-blog.csdnimg.cn/b40443c9c46941a1813b0871f1b1ada7.png)


### 3.3.1 代码编写


因为本次实验除了调用 **BMG IP** 核外还需要例化一个读写模块 **（这里我们将其命名为 ram_rw）**，所以我们需要创建一个顶层模块来例化 **IP** 核与读写模块，这里我们可以将顶层模块命名为 **ip_1port_ram**，代码如下：

```
module ip_1port_ram(
    input         sys_clk ,  //系统时钟
    input         sys_rst_n  //系统复位，低电平有效
    );

//wire define
wire             ram_en      ;  //RAM使能    
wire             ram_we      ;  //ram读写使能信号,高电平写入,低电平读出 
wire    [4:0]    ram_addr    ;  //ram读写地址 
wire    [7:0]    ram_wr_data ;  //ram写数据  
wire    [7:0]    ram_rd_data ;  //ram读数据  

//*****************************************************
//**                    main code
//*****************************************************

//ram读写模块
ram_rw  u_ram_rw(
    .clk            (sys_clk     ),
    .rst_n          (sys_rst_n   ),
    //RAM
    .ram_en         (ram_en      ),
    .ram_we         (ram_we      ),
    .ram_addr       (ram_addr    ),
    .ram_wr_data    (ram_wr_data ),
    .ram_rd_data    (ram_rd_data )
    );

//ram ip核
blk_mem_gen_0  blk_mem_gen_0 (
    .clka  (sys_clk      ),  // input wire clka
    .ena   (ram_en       ),  // input wire ena  
    .wea   (ram_we       ),  // input wire [0 : 0] wea
    .addra (ram_addr     ),  // input wire [4 : 0] addra
    .dina  (ram_wr_data  ),  // input wire [7 : 0] dina
    .douta (ram_rd_data  )  // output wire [7 : 0] douta
);

endmodule
```


可以看出 **ip_1port_ram** 顶层模块只是例化了 **IP** 核 **（blk_mem_gen_0）** 和读写模块 **（ram_rw）** ，其中读写模块负责产生对 **RAM IP** 核读/写所需的所有数据、地址和读写使能信号，同时将 **RAM IP** 读出的数据也连接至 **ram_rw** 模块。

## 3.4 RAM读写模块设计


>首先介绍下 **RAM** 读写模块的设计， 在 **RAM** 读写模块中， 我们的输入信号主要有系统时钟信号、系统复位信号和 RAM IP 核输出的读数据（**ram_rd_data**），输出有控制 **RAM** 所需的 **ram_en（RAM 端口使能）**、**ram_we（读写使能）**、  **ram_addr（读写地址）** 和 **ram_wr_data（写数据）** 这四个信号。由上述分析绘制出如下图所示的模块框图：

![在这里插入图片描述](https://img-blog.csdnimg.cn/dc6f2ecfcca74032b44dc269a28cffbc.png)

**模块端口**与**功能描述**如下表所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/c59c5156a6364daca5234d5a41935da3.png)


### 3.4.1 绘制波形图

在编写代码之前，我们可以先绘制一个大致的模块端口信号的波形图，其中时钟和复位信号是必不可少的， **ram_en（RAM 端口使能信号）**、 **ram_we（读写使能信号）**、 **ram_addr（读写地址）**、 **ram_wr_data（写数据）** 信号是我们使用 RAM 时要控制的信号， **ram_rd_data** 是 RAM 输出的数据， **rw_cnt（读写计数器）** 是用来改变读写使能状态的，以读写 32 个数据为例，绘制出如下波形图：


![在这里插入图片描述](https://img-blog.csdnimg.cn/21596caaae66412fa24dda0c30cfffc1.png)

>当系统复位结束后，我们便一直对 **RAM** 进行读写操作，所以 **ram_en** 在复位结束后一直处于使能状态。因为是读写 32 个数据，所以地址一直在 0~31 之间循环计数。接着我们用一个计数器（**rw_cnt**）循环计数 0~63 ，以此来对读写使能信号（**ram_we**）进行切换。当计数器值在 0~31 时进行写操作，写操作期间我们需要将 **ram_we** 置为高；当计数器值在 32~63 时进行读操作，读操作期间我们需要将 **ram_we** 置为低。

>在写操作期间，写数据（**ram_wr_data**）由 0 开始累加（步进为 1），直到累加值等于 31（即写入 32个数据）时清零。而读数据只需要我们给出地址即可，需要注意的是**读数据的输出会比地址晚一个时钟周期**，当我们由读状态切换至写状态时，读数据会保持最后一次读出的数据。


### 3.4.2 代码编写

**ram_rw** 模块用于产生 **RAM** 读/写操作所需的信号，其代码如下所示：


```
module ram_rw(
    input               clk        ,  //时钟信号
    input               rst_n      ,  //复位信号，低电平有效
    
    output  reg         ram_en     ,  //ram使能信号
    output              ram_we     ,  //ram读写选择
    output  reg  [4:0]  ram_addr   ,  //ram读写地址
    output  reg  [7:0]  ram_wr_data,  //ram写数据
    input        [7:0]  ram_rd_data   //ram读数据        
    );

//reg define
reg    [5:0]  rw_cnt ;                //读写控制计数器

//*****************************************************
//**                    main code
//*****************************************************

//rw_cnt计数范围在0~31,写入数据;32~63时,读出数据
assign ram_we = (rw_cnt <= 6'd31 && ram_en == 1'b1) ? 1'b1 : 1'b0;

//控制RAM使能信号
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        ram_en <= 1'b0;    
    else
        ram_en <= 1'b1;    
end 

//读写控制计数器,计数器范围0~63
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rw_cnt <= 6'b0;    
    else if(rw_cnt == 6'd63  && ram_en)
        rw_cnt <= 6'b0;
    else if(ram_en)
        rw_cnt <= rw_cnt + 1'b1; 
    else
        rw_cnt <= 6'b0;      
end  

//读写地址信号 范围：0~31
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        ram_addr <= 5'b0;
    else if(ram_addr == 5'd31 && ram_en)
        ram_addr <= 5'b0;
    else if (ram_en)   
        ram_addr <= ram_addr + 1'b1;
    else
        ram_addr <= 5'b0;         
end

//在WE拉高期间产生RAM写数据,变化范围是0~31
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        ram_wr_data <= 8'b0;  
    else if(ram_wr_data < 8'd31 && ram_we)
        ram_wr_data <= ram_wr_data + 1'b1;
    else
        ram_wr_data <= 8'b0 ;   
end  

ila_0 u_ila_0 (
    .clk(clk),           // input wire clk

    .probe0(ram_en),     // input wire [0:0]  probe0  
    .probe1(ram_we),     // input wire [0:0]  probe1 
    .probe2(ram_addr),   // input wire [4:0]  probe2 
    .probe3(ram_wr_data),// input wire [7:0]  probe3 
    .probe4(ram_rd_data) // input wire [7:0]  probe4 
);

endmodule
```


模块中定义了一个读写控制计数器 **（rw_cnt）**，当计数范围在 0~ 31 之间时，向 **ram** 的 0~ 31地址写入数据（ 0~ 31）；当计数范围在 32~ 63 之间时，从 **ram** 的 0~31 地址中读出数据。






# 4 仿真验证


## 4.1 编写TestBench

我们接下来先对代码进行仿真，因为本章实验我们只有**系统时钟**和**系统复位**这两个输入信号，所以仿真文件也只需要编写这两个信号的激励即可， **TestBench** 代码如下：

```
`timescale 1ns / 1ps        //仿真单位/仿真精度

module tb_ip_1port_ram();

//parameter define
parameter  CLK_PERIOD = 20; //时钟周期 20ns

//reg define
reg     sys_clk;
reg     sys_rst_n;

//信号初始化
initial begin
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    #200
    sys_rst_n = 1'b1;
end

//产生时钟
always #(CLK_PERIOD/2) sys_clk = ~sys_clk;

ip_1port_ram u_ip_1port_ram(
    .sys_clk          (sys_clk        ),
    .sys_rst_n        (sys_rst_n      ) 
    );

endmodule

```


## 4.2 代码仿真


通过仿真我们得到了以下波形图：
![在这里插入图片描述](https://img-blog.csdnimg.cn/040dad0a24e34f08aea321519996b625.png)

>可以看出我们的波形是满足我们所选择的不变模式的，即**读写不同时进行**。接下来我们展开波形图，分别看一下**写操作**与**读操作**时的波形。

**写操作波形图**如下所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/ebc81f55af154d87b3397c87693f360b.png)

> 由上图可知， **ram_wea** 信号拉高，说明此时是对 **ram** 进行写操作。 **ram_wea** 信号拉高之后，地址和数据都是从 0 开始累加，也就说当 **ram** 地址为 0 时，写入的数据也是 0；当 **ram** 地址为 1 时，写入的数据也是 1，我们总共向 **ram** 中写入 32 个（即 0~31）数据。

读操作波形图如下所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/64149c2dc1984fdb94dd1254a0c85da3.png)

> 由上图可知， **ram_wea** 信号拉低，说明此时是对 ram 进行读操作。 **ram_wea** 信号拉低之后， **ram_addr** 从0 开始增加，即从 **ram** 的地址 0 开始读数据； **ram_rd_data** 在给出地址的下一个时钟周期后，开始输出数据，输出的数据为 0、 1、 2……30、 31，和我们写入的值是相等的，也就是说，我们创建的 **RAM IP** 核从仿真结果上来看是正确的。



# 5 下载验证

## 5.1 引脚约束

在仿真验证完成后，接下来对引脚进行分配，并上板验证。 本实验中，系统时钟、按键复位的管脚分配 **（根据自己的开发板来改写）** 如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/78483469f4e4491d8ba511d49354438f.png)

对应的 **XDC 约束语句**如下所示：

```
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports sys_clk]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports sys_rst_n]
```

Vivado 软件中 **IO Planning** 界面如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/5df4a6afc13a464e82bbb9b9d5e8baaf.png)


## 5.2 添加 ila IP 核进行在线调试

接下来添加 **ILA IP** 核，将 **ram_en（1 位）**、 **ram_wea（1 位）**、 **ram_addr（5 位）**、 **ram_wr_data（8 位）** 和 **ram_rd_data（8 位）** 信号添加至观察列表中，添加 **ILA IP** 核的方法这里就不再赘述了，不会的朋友可以自行在CSDN上搜索教程（非常多）。本例程是将 **ILA** 例化在了 **ram_rw** 模块中，例化代码如下所示：

```
ila_0 u_ila_0 (
    .clk(clk),           // input wire clk

    .probe0(ram_en),     // input wire [0:0]  probe0  
    .probe1(ram_we),     // input wire [0:0]  probe1 
    .probe2(ram_addr),   // input wire [4:0]  probe2 
    .probe3(ram_wr_data),// input wire [7:0]  probe3 
    .probe4(ram_rd_data) // input wire [7:0]  probe4 
);
```


## 5.3 上板验证

编译工程并生成比特流文件后，将下载器一端连接电脑，另一端与开发板上的 **JTAG** 下载口连接，连接电源线，并打开开发板的电源开关。

点击 Vivado 左侧 **“Flow Navigator”** 窗口最下面的 **“Open Hardware Manager”** ，如果此时 Vivado 软件识别到了下载器，则点击 **“Hardware”** 窗口中 **“Progam Device”** ，在弹出的界面中选择 **“Program”** 下载程序。

**RAM 写操作**在 ILA 中观察到的波形如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/893d76c5da7c4f26bc788cddbb41d676.png)

> 由上图可知， **ram_wea** 信号拉高之后，地址和数据都从 0 开始累加，也就说当 **ram** 地址为 0 时，写入的数据也是 0；当 **ram** 地址为 1 时，写入的数据也是 1。可以发现，写操作的验证结果与我们的仿真波形是一致。

接着我们再来看一下 **RAM 读操作**在 ILA 中观察到的波形，如下图所示：

![在这里插入图片描述](https://img-blog.csdnimg.cn/81744944f1f54dc8902b71c5d3fb47bd.png)

> 由上图可知， **ram_wea** 信号拉低之后， **ram_addr** 从0 开始增加，即从 **ram** 的地址 0 开始读数据； **ram_rd_data** 在给出地址的下一个时钟周期后，开始输出数据，输出的数据为 0， 1， 2……30， 31，和我们写入的值是相等的。我们可以发现，读操作的验证结果和仿真的波形也是一致的，至此说明了 **IP 核之单端口 RAM 实验**验证成功！

# 6 总结

本文我们主要介绍了存储器的分类、静态 RAM 的种类和特性，重点讲解了 Vivado 软件中如何将BGM IP 核配置成单端口 RAM 的方法，并调用其进行读写操作，希望对您有所帮助，有兴趣的朋友可以进一步联系我交流。

微博：沂舟Ryan ([@沂舟Ryan 的个人主页 - 微博 ](https://weibo.com/u/7619968945))

GitHub：[ChinaRyan666](https://github.com/ChinaRyan666)

微信公众号：沂舟无限进步

如果对您有帮助的话请点赞支持下吧！



**集中一点，登峰造极。**
