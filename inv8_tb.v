module inv8_tb;
//reg[3:0]gam0,gam1;
//wire [3:0]de1,de0;
reg [7:0]inv8_in;
wire [7:0] inv8_out;

//inv8 inv_8(gam0,gam1,de0,de1);
inv8 inv_8(inv8_in,inv8_out);

initial begin
//gam0=4'b0010;
//gam1=4'b0111;
inv8_in=8'h72;
end

initial
#500 $stop;

endmodule

