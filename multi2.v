module multi2 (g,d,f);
input [1:0]g;
input [1:0]d;
output [1:0] f;

wire temp2_1,temp2_2,temp2_3,temp2_4,temp2_5;

assign temp2_1=g[1]^g[0];
assign temp2_2=d[1]^d[0];
assign temp2_3=g[1]&d[1];
assign temp2_4=temp2_1&temp2_2;
assign temp2_5=g[0]&d[0];
assign temp2_5=g[0]&d[0];
assign f[1]=temp2_4^temp2_5;
assign f[0]=temp2_3^temp2_5;

endmodule
