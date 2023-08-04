`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 28.07.2023 08:01:59
// Design Name: 
// Module Name: d_flip_flop
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
 //"output reg x;" is declared in a module. 
// if you use "always @(a or b) x = a & b;" it will be combinational. If you use "always @(posedge clk) x <= a&b;" 
//then it will implement a flipflop.

//////////////////////////////////////////////////////////////////////////////////


module d_flip_flop(input clk,
                   input d,
                   output reg q
                   );
                   
         always @(posedge clk) begin
            q = d;
         end
         
endmodule
