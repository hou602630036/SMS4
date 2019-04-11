module multi2_tb ;
reg [1:0]g;
reg [1:0]d;
wire [1:0]f;

multi2 U1 (g,d,f);

initial begin
g=2'b00;
d=2'b00;
#20 g=2'b01;
d=2'b10;
#20 g=2'b11;
d=2'b00;
#20 g=2'b10;
d=2'b10;
end

endmodule 
