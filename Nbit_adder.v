`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 02:36:10 PM
// Design Name: 
// Module Name: Nbit_adder
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


module Nbit_adder(
   input [N-1:0]a,b,
    input cin, 
    output [N-1:0] sum,
    output cout
    );
    parameter N=4;
    wire [N:0] c;
    assign c[0]=cin;
    genvar i;
    generate 
    for (i=0;i<N;i=i+1)
    begin:FA_lp
    
    FA FA0 (a[i],b[i],c[i],sum[i],c[i+1]);
    assign cout=c[N];
    end
    endgenerate
endmodule
