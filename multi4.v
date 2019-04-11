module multi4(output[3:0] y,input[3:0] a,b);
wire[1:0] temp3_1_1,temp3_1_2,temp3_2_1,temp3_2_2,temp3_2_3,temp3_3_1,N;
assign N=2'b10;
assign temp3_1_1=a[3:2]^a[1:0];
assign temp3_1_2=b[3:2]^b[1:0];
multi2 m1(a[3:2],b[3:2],temp3_2_1);
multi2 m2(temp3_1_1,temp3_1_2,temp3_2_2);
multi2 m3(a[1:0],b[1:0],temp3_2_3);
assign y[3:2]=temp3_2_2^temp3_2_3;
multi2 m4(N,temp3_2_1,temp3_3_1);
assign y[1:0]=temp3_3_1^temp3_2_3;

endmodule
