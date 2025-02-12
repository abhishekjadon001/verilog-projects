`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2025 11:56:10
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
reg [2:0]a,b;
wire [2:0]y;
integer i;
comparator dut(.a(a), .b(b), .y(y));
initial begin
for (i=0;i<8;i=i+1)
begin
a = i;
b = i+1;
#20;
end
for (i=0;i<8;i=i+1)
begin
a = i;
b = i;
#20;
end
for (i=0;i<8;i=i+1)
begin
a = i+1;
b = i;
#20;
end
end
endmodule
