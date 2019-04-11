module multi4_tb ;
reg [3:0]a0;
reg [3:0]b0;
wire [3:0]y0;

multi4 U1 (y0,a0,b0);

initial begin
a0=4'b0000;
b0=4'b0000;
#20 a0=4'b0001;
b0=4'b1000;
#20 a0=4'b0011;
b0=4'b1010;
#20 a0=4'b0111;
b0=4'b1000;
end
endmodule 
