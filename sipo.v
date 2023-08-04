`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 04.08.2023 06:31:45
// Design Name: 
// Module Name: sipo
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


module sipo(input sin,
            input clk,
            output [3:0]po);
    
    //wire q0,q1,q2,q3;
    d_flip_flop D1(clk, sin,po[0]);
    d_flip_flop D2(clk, po[0],po[1]);
    d_flip_flop D3(clk, po[1],po[2]);
    d_flip_flop D4(clk, po[2],po[3]);
    
endmodule
