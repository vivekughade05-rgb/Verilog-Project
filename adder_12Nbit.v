`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 12:37:29 AM
// Design Name: 
// Module Name: adder_12Nbit
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


module adder_12Nbit(a,b,cin,sum,cout);
parameter N=12;
    input [N-1:0]a,b;
    input cin; 
    output [N-1:0] sum;
    output cout;
   
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