
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2026 23:43:24
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu( input [3:0]a
           ,input[3:0] b,
            input [3:0] s ,
            output reg [3:0]c);
 always@(*) begin
 case(s)
  3'b000: c =a+b;
  3'b001: c=a-b;
  3'b010: c=a&b;
  3'b011: c=a|b;
  3'b100: c=a<<b;
  3'b101: c=a>>b;
   endcase
   end
endmodule
