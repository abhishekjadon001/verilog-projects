`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2025 12:16:16
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb;
reg x,y;
wire sum,carry;
halfadder dut(.x(x), .y(y), .sum(sum), .carry(carry));
initial begin
x=0; y=0;
#10
x=0; y=1;
#10
x=1; y=0;
#10
x=1; y=1;
#10
$finish();
end
endmodule
