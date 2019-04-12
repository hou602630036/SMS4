module inv4(t0,t1,delta0,delta1);
input [1:0]t0,t1;
output [1:0]delta0,delta1;
//output [1:0]re2,in1,in2,out;
//wire [1:0]delta0,delta1;
wire [1:0]in1,in2;
wire [1:0]re1,out,t2;
wire [1:0]re2,invre2;

multi2 mult1(.g(re1),.d(t0),.f(out));
multi2 mult2(.g(invre2),.d(t1),.f(delta1));
multi2 mult3(.g(invre2),.d(re1),.f(delta0));

assign re1=t0^t1;
assign t2[0]=t1[1],t2[1]=t1[0];
assign re2=out^t2;
assign invre2[1]=re2[1],invre2[0]=re2[0]^re2[1];

endmodule
