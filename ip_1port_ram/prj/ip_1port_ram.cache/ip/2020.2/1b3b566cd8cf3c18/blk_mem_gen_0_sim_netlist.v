// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  9 11:41:32 2023
// Host        : DESKTOP-HL6DT46 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20672)
`pragma protect data_block
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
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
