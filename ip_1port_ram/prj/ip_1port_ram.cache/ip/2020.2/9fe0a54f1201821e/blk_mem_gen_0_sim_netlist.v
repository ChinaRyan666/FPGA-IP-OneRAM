// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 23 17:18:19 2023
// Host        : DESKTOP-HL6DT46 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
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
