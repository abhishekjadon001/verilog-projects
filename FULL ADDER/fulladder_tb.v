`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 12:02:43
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb();
reg a,b,z;
wire sum,carry;
fulladder dut(.a(a), .b(b), .z(z), .sum(sum), .carry(carry));
initial begin
a=0; b=0; z=0;
#10
a=0; b=0; z=1;
#10
a=0; b=1; z=0;
#10
a=0; b=1; z=1;
#10
a=1; b=0; z=0;
#10
a=1; b=0; z=1;
#10
a=1; b=1; z=0;
#10
a=1; b=1; z=1;
#10
$finish();
end
endmodule
