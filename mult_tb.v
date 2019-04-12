module mult_tb;
reg [3:0]r1,r0,d1,d0,v;
wire [3:0]o1,o2,o3,o4,o5;
wire [7:0]o6;

initial begin
r1=4'h7;
r0=4'h2;
d1=4'h7;
d0=4'h5;
v=4'b1111;
end

multi4 mu1(.a(r1),.b(d0),.y(o1));
multi4 mu2(.a(r0),.b(d1),.y(o2));
multi4 mu3(.a(r1),.b(d1),.y(o3));
multi4 mu4(.a(r0),.b(d0),.y(o4));
multi4 mu5(.a(o3),.b(v),.y(o5));

assign o6={o1^o2^o3,o4^o5};

endmodule