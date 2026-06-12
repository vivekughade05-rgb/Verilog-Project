`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 02:31:38 PM
// Design Name: 
// Module Name: sub_9Nbit
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


module sub_9Nbit(a,b,cin,diff,borrow);
parameter N=9;
    input [N-1:0]a,b;
    input cin; 
    output [N-1:0]diff;
    output borrow;
   
    wire [N:0] c;
    assign c[0]=cin;
    genvar i;
    generate 
    for (i=0;i<N;i=i+1)
    begin:fullsub_lp
    
    full_sub Fs0 (a[i],b[i],c[i],diff[i],c[i+1]);
    assign borrow=c[N];
    end
    endgenerate
    
    endmodule