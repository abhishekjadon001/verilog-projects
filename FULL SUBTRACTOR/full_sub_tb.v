`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2025 12:43:35
// Design Name: 
// Module Name: full_sub_tb
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


module full_sub_tb();
reg a,b,z;
wire diff,borrow;
full_sub dut(.a(a), .b(b), .z(z), .diff(diff), .borrow(borrow));
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
