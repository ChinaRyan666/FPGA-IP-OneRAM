// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  9 11:41:32 2023
// Host        : DESKTOP-HL6DT46 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA/z2/ip_1port_ram/prj/ip_1port_ram.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3883 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20640)
`pragma protect data_block
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
0g9IXH6/
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
