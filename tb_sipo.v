`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 04.08.2023 06:46:13
// Design Name: 
// Module Name: tb_sipo
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


module tb_sipo;
    reg clk;
    reg sin;
    wire [3:0]po;
    
    sipo DUT(.clk(clk),
             .sin(sin),
             .po(po)
             );
             
    initial begin
        clk = 0;
        #00 sin = 1'b1;
        #10 sin = 1'b0;
        #10 sin = 1'b1;
        #10 sin = 1'b1;
        #15 $stop; //4 clk pulses req for proper output
    end
    
    always #5 clk = ~clk;
        
    
endmodule
