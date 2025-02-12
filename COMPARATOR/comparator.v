`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2025 11:14:02
// Design Name: 
// Module Name: comparator
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


module comparator(a,b,y);
input [2:0]a;
input [2:0]b;
output [2:0]y;
assign y[0] = (a[2]~^b[2])&(a[1]~^b[1])&(a[0]~^b[0]);
assign y[1] = (a[2]&~b[2]) | (a[2]~^b[2])&(a[1]&~b[1]) | (a[2]~^b[2])&(a[1]~^b[1])&(a[0]&~b[0]);
assign y[2] = (~a[2]&b[2]) | (a[2]~^b[2])&(~a[1]&b[1]) | (a[2]~^b[2])&(a[1]~^b[1])&(~a[0]&b[0]);
endmodule
