`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 02:27:21 PM
// Design Name: 
// Module Name: adder_8bit
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

module adder_8bit(
   input [7:0]a,b,
    input cin, 
    output [7:0] sum,
    output cout
    );
    wire [8:0] c;
    assign c[0]=cin;
    FA FA0 (a[0],b[0],c[0],sum[0],c[1]);
    FA FA1 (a[1],b[1],c[1],sum[1],c[2]);
    FA FA2 (a[2],b[2],c[2],sum[2],c[3]);
    FA FA3 (a[3],b[3],c[3],sum[3],c[4]);
    FA FA4 (a[4],b[4],c[4],sum[4],c[5]);
    FA FA5 (a[5],b[5],c[5],sum[5],c[6]);
    FA FA6 (a[6],b[6],c[6],sum[6],c[7]);
    FA FA7 (a[7],b[7],c[7],sum[7],c[8]);
    assign cout=c[8];
endmodule
