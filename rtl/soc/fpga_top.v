module fpga_top(
  input   clk_in1_p,
  input   clk_in1_n,
  input   rst      ,
  input   uart_rxd ,
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

wire trdy;
wire [31:0] timer_cnt;

wire reg_uart_rx_we;
wire [31:0] reg_uart_rx_addr;
wire [31:0] reg_uart_rx_wdat;
wire [31:0] reg_uart_rx_rdat;

(*mark_debug="true"*)wire  reg_bus_we;
(*mark_debug="true"*)wire  [31:0] reg_bus_addr;
(*mark_debug="true"*)wire  [31:0] reg_bus_wdat;
(*mark_debug="true"*)wire  reg_bus_rd;
(*mark_debug="true"*)reg   [31:0] reg_bus_rdat;// = reg_bus_addr == 32'h80000100 ? trdy : 
                                               //  reg_bus_addr == 32'h80000120 ? reg_uart_rx_rdat :
                                               //  reg_bus_addr == 32'h80000200 ? timer_cnt :'h3;
always@(*)begin
  reg_bus_rdat = 3;//test
  casez(reg_bus_addr)
  32'h80000100 : reg_bus_rdat = {31'b0,trdy};
  32'h8000012? : reg_bus_rdat = reg_uart_rx_rdat;
  32'h80000200 : reg_bus_rdat = timer_cnt;
  endcase
end

assign reg_uart_rx_we   = reg_bus_addr[31:4] == (32'h80000120>>4) ? reg_bus_we :0;
assign reg_uart_rx_wdat = reg_bus_addr[31:4] == (32'h80000120>>4) ? reg_bus_wdat :0;
assign reg_uart_rx_addr = reg_bus_addr[31:4] == (32'h80000120>>4) ? reg_bus_addr :0;

(*mark_debug="true"*)wire iram_we    ;
(*mark_debug="true"*)wire [31:0] iram_waddr; 
(*mark_debug="true"*)wire [31:0] iram_wdata;

wire       uart_tvld  = reg_bus_addr == 32'h80000104 ? reg_bus_we : 0;
wire [7:0] uart_tdata = uart_tvld ? reg_bus_wdat : 0;
wire       uart_rvld;
wire [7:0] uart_rdata;
wire       intr = uart_rvld;
starsea_core u_starsea_core(
.clk(clk),
.rst_n(rst_n),
.iram_we      (iram_we     ),
.iram_waddr   (iram_waddr  ),
.iram_wdata   (iram_wdata  ),
.intr         (intr        ),
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

uart_rx #(.clk_freq ( 50_000_000 ),.baud_ratio ( 115200 )) u_uart_rx (
.clk          ( clk               ), // input
.rst_n        ( rst_n             ), // input

.rxd          ( uart_rxd          ), // input
.rvld         ( uart_rvld         ), // output
.rdata        ( uart_rdata        ), // output

.reg_bus_we   ( reg_uart_rx_we  ),
.reg_bus_addr ( reg_uart_rx_addr),
.reg_bus_wdat ( reg_uart_rx_wdat),
.reg_bus_rdat ( reg_uart_rx_rdat)     

);



timer u_timer (

.clk          ( clk               ), // input
.rst_n        ( rst_n             ), // input
.timer_cnt    ( timer_cnt         )
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

module uart_rx #(
    parameter clk_freq  = 27_000_000,
    parameter baud_ratio= 115200 
) (
	input             clk,
	input             rst_n,
	output reg  [7:0] rdata,
	output reg        rvld,
	input             rxd,

  input         reg_bus_we         ,
  input  [31:0] reg_bus_addr       ,
  input  [31:0] reg_bus_wdat       ,
  output reg[31:0] reg_bus_rdat             
);
localparam clk_div_num = clk_freq / baud_ratio;

reg [15:0] rxd_ff;
always@(posedge clk or negedge rst_n)
  if(~rst_n)      rxd_ff <= 16'hffff;
  else            rxd_ff <= {rxd_ff[14:0],rxd};

reg rxd_final;
always@(posedge clk or negedge rst_n)
  if(~rst_n)         rxd_final <= 1'b1;
  else if(&rxd_ff)   rxd_final <= 1'b1;
  else if(~(|rxd_ff))rxd_final <= 1'b0;


reg [15:0] bit_time;
wire       bit_done;
reg [4:0] cstate;
reg [4:0] nstate;
localparam idle = 5'b0;
localparam start = 5'b1;
localparam bit0 = 5'h2;
localparam bit1 = 5'h3;
localparam bit2 = 5'h4;
localparam bit3 = 5'h5;
localparam bit4 = 5'h6;
localparam bit5 = 5'h7;
localparam bit6 = 5'h8;
localparam bit7 = 5'h9;
localparam stop = 5'ha;
always@(*)begin
  nstate = cstate;
  case(cstate)
  idle:  if(rxd_final==0)    nstate = start;
  start: if(bit_done) nstate=bit0;
  bit0:  if(bit_done) nstate=bit1;
  bit1:  if(bit_done) nstate=bit2;
  bit2:  if(bit_done) nstate=bit3;
  bit3:  if(bit_done) nstate=bit4;
  bit4:  if(bit_done) nstate=bit5;
  bit5:  if(bit_done) nstate=bit6;
  bit6:  if(bit_done) nstate=bit7;
  bit7:  if(bit_done) nstate=stop;
  stop:  if(bit_done) nstate=idle;
  endcase
end

always@(posedge clk or negedge rst_n)
  if(~rst_n)      cstate <= 5'b0;
  else            cstate <= nstate;

always@(posedge clk or negedge rst_n)
  if(~rst_n)                        bit_time <= 16'b0;
  else if(bit_time == clk_div_num)  bit_time <= 16'b0;
  else if(cstate != idle)           bit_time <= bit_time + 1'b1;

     
assign bit_done = bit_time==clk_div_num;

always@(posedge clk or negedge rst_n)
  if(~rst_n)      rdata <= 8'b0;
  else if(cstate != idle && cstate != start && cstate != stop)
    if(bit_time == clk_div_num/2)
        rdata <= {rxd_final,rdata[7:1]};

always@(posedge clk or negedge rst_n)
  if(~rst_n)     
    rvld <= 1'b0;
  else if(cstate == bit7 && bit_time == clk_div_num/2)
    rvld <=1'b1;
  else
    rvld <= 1'b0;

wire intr_flag_clr = reg_bus_we & (reg_bus_addr == 32'h80000124);
reg intr_flag;
always@(posedge clk or negedge rst_n)
  if(~rst_n)     
    intr_flag <= 1'b0;
  else if(intr_flag_clr)
    intr_flag <= 1'b0;
  else if(cstate == bit7 && bit_time == clk_div_num/2)
    intr_flag <= 1'b1;

reg [7:0] rdata_buf ;
always@(posedge clk or negedge rst_n)
  if(~rst_n)     
    rdata_buf <= 8'b0;
  else if(rvld)
    rdata_buf <= rdata;

always@(*)begin
  reg_bus_rdat = 0;
  case(reg_bus_addr)
  32'h80000120 : reg_bus_rdat = {31'b0,intr_flag};
  32'h80000124 : reg_bus_rdat = {32'b0,intr_flag_clr};
  32'h80000128 : reg_bus_rdat = {24'b0,rdata_buf};
  endcase
end

endmodule



module timer
(
	input		    clk,
	input		    rst_n,
	output reg[31:0]	timer_cnt
);

always@(posedge clk or negedge rst_n)
	if(~rst_n)					 timer_cnt <= 0;
	else                 timer_cnt <= timer_cnt +1; 
      
endmodule

