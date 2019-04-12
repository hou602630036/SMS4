// Engineer: Chongyang Li
// 
// Create Date: 2019/04/12 
// Design Name: 
// Module Name: Sbox_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:  
module Sbox_top(Sin,Sout);

input [7:0] Sin;
output [7:0] Sout;

wire [7:0] inv8_in;
wire [7:0] inv8_out;

post_map  post_map   (.Sin(Sin),
			          .post_map_out(inv8_in)
			          );
					  
inv8  inv8  (.inv8_in(inv8_in),
			 .inv8_out(inv8_out)
			);

neg_map neg_map (.neg_map_in(inv8_out),
				 .Sout(Sout)
				);	
endmodule		
			