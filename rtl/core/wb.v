module wb (
input           clk                          ,
input           rst_n                        ,
input           sw_en                        ,
input           addi_ex                      ,
input           andi_ex                      ,
input           add_en                       ,
output  reg     wr_dbus_en                   ,
output  reg     wr_rd_en                     
);                             
wire    wr_rd_rdy;                             
reg     wr_dbus_en_tmp;                             
reg     wr_rd_en_tmp;

always_comb begin
    wr_dbus_en_tmp  = 1'b0;
    wr_rd_en_tmp = 1'b0;
    case  ({sw_en,andi_ex|addi_ex|add_en})
    2'b00  :begin wr_dbus_en_tmp  = 1'b0;
             wr_rd_en_tmp = 1'b0;
            end
    2'b01  : wr_rd_en_tmp = 1'b1;
    2'b10  : wr_dbus_en_tmp = 1'b1;
    default :
             begin
             wr_dbus_en_tmp  = 1'b0;
             wr_rd_en_tmp = 1'b0;
             end
    endcase
end
always@(posedge clk or negedge rst_n)
    if(~rst_n) begin
        wr_dbus_en <= 1'b0;
        wr_rd_en <= 1'b0;
    end else begin
        wr_dbus_en <= wr_dbus_en_tmp;
        wr_rd_en <= wr_rd_en_tmp;
    end

endmodule
