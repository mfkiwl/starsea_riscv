module fpga_top(
  input   clk_in1_p,
  input   clk_in1_n,
  input   rst      ,
  output  uart_txd 
);
`ifndef SIM
reg rst_n;
//assign rst_n = ~rst;
wire locked;
clk_wiz_0 u_fpga_clk(
.oscclk1(clk),     // output clk
.reset(rst), // input reset
.locked(locked),       // output locked
.clk_in1_p(clk_in1_p),    // input clk_in1_p
.clk_in1_n(clk_in1_n));    // input clk_in1_
reg [19:0] lock_cnt;
always@(posedge clk or posedge rst)
    if(rst)
        lock_cnt <= 'b0;
    else if(lock_cnt=='h7a120)//20ns*'h7a120 = 10ms
        lock_cnt <= lock_cnt ;
    else if(locked)
        lock_cnt <= lock_cnt + 1;

always@(posedge clk or posedge rst)
    if(rst)
        rst_n <= 1'b0;
    else if(lock_cnt=='h7a120)//20ns*'h7a120 = 10ms
        rst_n <= 1'b1;
`else
bit clk;
bit rst_n;
always #10 clk = ~clk;
initial begin
  rst_n = 1'b0;
  #100;
  rst_n = 1'b1;
  #30us;
end
`endif

(*mark_debug="true"*)wire  reg_bus_we;
(*mark_debug="true"*)wire  [31:0] reg_bus_addr;
(*mark_debug="true"*)wire  [31:0] reg_bus_wdat;
(*mark_debug="true"*)wire  reg_bus_rd;
(*mark_debug="true"*)wire  [31:0] reg_bus_rdat = 3;

(*mark_debug="true"*)wire iram_we    ;
(*mark_debug="true"*)wire [31:0] iram_waddr; 
(*mark_debug="true"*)wire [31:0] iram_wdata;

wire [7:0] uart_tdata = 8'ha0;
wire       uart_tvld  = reg_bus_we;
starsea_core u_starsea_core(
.clk(clk),
.rst_n(rst_n),
.iram_we      (iram_we     ),
.iram_waddr   (iram_waddr  ),
.iram_wdata   (iram_wdata  ),
.reg_bus_we   (reg_bus_we  ),
.reg_bus_addr (reg_bus_addr),
.reg_bus_wdat (reg_bus_wdat),
.reg_bus_rd   (reg_bus_rd  ),
.reg_bus_rdat (reg_bus_rdat)
);

uart_tx #(.clk_freq ( 50_000_000 ),.baud_ratio ( 115200 )) u_uart_tx (

.clk          ( clk               ), // input
.rst_n        ( rst_n             ), // input
.tdata        ( uart_tdata  [7:0] ), // input
.tvld         ( uart_tvld         ), // input,

.txd          ( uart_txd          ), // output
.trdy         ( trdy              )  // output
);
endmodule

module uart_tx #(
    parameter clk_freq  = 27_000_000,
    parameter baud_ratio= 115200 
) (
	input		    clk,
	input		    rst_n,
	input[7:0]	tdata,
	input		    tvld,
(*mark_debug="true"*)	output reg	txd,
	output 		  trdy
);
localparam clk_div_num = clk_freq / baud_ratio;

reg [9:0]  tdata_buf;
reg [9:0]  clk_div_cnt;
reg 	     clk_div_cnt_en;
reg [3:0]  tbyte_cnt;
wire       tbit_done;
wire       tbyte_done;
always@(posedge clk or negedge rst_n)
	if(~rst_n)				tdata_buf <= 10'h3ff;
	else if(trdy & tvld)	tdata_buf <= {1'b1,tdata,1'b0};
	else if(tbit_done)   tdata_buf <= {2'b11,tdata_buf[8:1]};

assign txd = tdata_buf[0];

always@(posedge clk or negedge rst_n)
	if(~rst_n)					 clk_div_cnt_en <= 0;
	else if(tbyte_done ) clk_div_cnt_en <= 0;
	else if(trdy & tvld) clk_div_cnt_en <= 1;
      
always@(posedge clk or negedge rst_n)
	if(~rst_n)					clk_div_cnt <= 0;
	else if(clk_div_cnt ==clk_div_num)	clk_div_cnt <= 0;
	else if(clk_div_cnt_en)			clk_div_cnt <= clk_div_cnt + 1'b1;		

always@(posedge clk or negedge rst_n)
	if(~rst_n)					tbyte_cnt <= 4'b0;
	else if(tbyte_done )	tbyte_cnt <= 4'b0;
	else if(trdy & tvld)	tbyte_cnt <= tbyte_cnt + 1'b1;
	else if(tbit_done == 1)	tbyte_cnt <= tbyte_cnt + 1'b1;

assign tbit_done = clk_div_cnt==clk_div_num;
assign trdy = tbyte_cnt == 'd0;
assign tbyte_done = tbyte_cnt == 'd10 && tbit_done;
endmodule

