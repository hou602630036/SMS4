// Engineer: Chongyang Li
// 
// Create Date: 2019/04/12 
// Design Name: 
// Module Name: post_map
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:  完成了仿射变换以及两次同构映射
//
module post_map (Sin,post_map_out);

input [7:0] Sin;
output [7:0] post_map_out;


assign post_map_out[7]= ^{ Sin[6],Sin[5],Sin[4],Sin[3],Sin[2],Sin[1],Sin[0],1'b1};

assign post_map_out[6]= ^{ Sin[7],Sin[6],Sin[5],Sin[4],Sin[3],Sin[1],Sin[0],1'b1};

assign post_map_out[5]= ^{ Sin[7],Sin[5],Sin[4],Sin[3],Sin[1],Sin[0],1'b1};

assign post_map_out[4]= ^{ Sin[7],Sin[4],Sin[1],Sin[0],1'b1};

assign post_map_out[3]= ^{ Sin[4],Sin[3]};

assign post_map_out[2]= ^{ Sin[7],Sin[5],Sin[4],Sin[3],Sin[2]};

assign post_map_out[1]= ^{ Sin[7],Sin[6],Sin[3],Sin[2],Sin[1]};

assign post_map_out[0]= ^{ Sin[7],Sin[6],Sin[5],Sin[4]};

endmodule

