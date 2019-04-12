// Engineer: Chongyang Li
// 
// Create Date: 2019/04/12 
// Design Name: 
// Module Name: inv8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:  GF(2^8) Inverse
// 
module inv8(inv8_in,inv8_out);
input [7:0] inv8_in;
output [7:0] inv8_out;

wire [3:0] temp1,temp2,temp3,temp4,temp5;


assign temp1 = inv8_in[7:4] ^ inv8_in[3:0];

assign temp2[3] = ^{ inv8_in[7],inv8_in[5],inv8_in[4]};
assign temp2[2] = ^{ inv8_in[7],inv8_in[6],inv8_in[4]};
assign temp2[1] = ^{ inv8_in[5],inv8_in[4]};
assign temp2[0] = inv8_in[4];

assign temp4 = temp2 ^ temp3;

inv4   inv4_1 (temp4,temp5);  //先输入再输出

multi4 m4_1 (temp3,temp1,inv8_in[3:0]); 

multi4 m4_2 (inv8_out[7:4],temp5,inv8_in[7:4]);

multi4 m4_3 (inv8_out[3:0],temp5,temp1);

endmodule
