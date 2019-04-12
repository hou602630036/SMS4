// Engineer: Chongyang Li
// 
// Create Date: 2019/04/12 
// Design Name: 
// Module Name: neg_map
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:  完成同构逆映射以及后续的仿射变换
// 
module neg_map(neg_map_in,Sout);

input [7:0] neg_map_in;
output [7:0] Sout;

assign Sout[7] = ^{ neg_map_in[6],neg_map_in[5],neg_map_in[3],neg_map_in[0],1'b1 };

assign Sout[6] = ^{ neg_map_in[3],neg_map_in[2],neg_map_in[0],1'b1 };

assign Sout[5] = ^{ neg_map_in[6],neg_map_in[5],neg_map_in[3],neg_map_in[2],neg_map_in[1]};

assign Sout[4] = ^{ neg_map_in[7],neg_map_in[3],neg_map_in[2],neg_map_in[1]};

assign Sout[3] = ^{ neg_map_in[7],neg_map_in[6],neg_map_in[5],neg_map_in[4],neg_map_in[3],
                    neg_map_in[1],neg_map_in[0],1'b1};
					
assign Sout[2] = ^{ neg_map_in[4],neg_map_in[3],neg_map_in[1]};

assign Sout[1] = ^{ neg_map_in[7],neg_map_in[6],neg_map_in[3],neg_map_in[1],neg_map_in[0],1'b1 };

assign Sout[0] = ^{ neg_map_in[6],neg_map_in[5],neg_map_in[4],neg_map_in[2],neg_map_in[1],
                    neg_map_in[0],1'b1 };
					
endmodule					