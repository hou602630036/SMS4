module inv4_tb;
reg [1:0]t0,t1;
wire [1:0]delta0,delta1;

initial begin
#5 t0=2'b01;
t1=2'b11;
end

inv4 inv(t0,t1,delta0,delta1);

/*initial
$monitor($time,"t0=%b,t1=%b,delta0=%b,delta1=%b",t0,t1,in1,in2,out,re2,delta0,delta1);*/

initial
#200 $stop;

endmodule

