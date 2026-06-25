`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2026 11:12:21
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

reg [3:0] a, b, s;
wire [3:0] c;

alu uut (
    .a(a),
    .b(b),
    .s(s),
    .c(c)
);

initial begin

    // ADD
    a = 4'b0011; b = 4'b0010; s = 4'b0000;
    #10;

    // SUB
    a = 4'b0110; b = 4'b0011; s = 4'b0001;
    #10;

    // AND
    a = 4'b1100; b = 4'b1010; s = 4'b0010;
    #10;

    // OR
    a = 4'b1100; b = 4'b1010; s = 4'b0011;
    #10;

    // LEFT SHIFT
    a = 4'b0011; b = 4'b0001; s = 4'b0100;
    #10;

    // RIGHT SHIFT
    a = 4'b1000; b = 4'b0010; s = 4'b0101;
    #10;

    $stop;
end

endmodule
