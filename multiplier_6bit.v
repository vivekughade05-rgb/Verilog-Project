`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 02:41:09 PM
// Design Name: 
// Module Name: multiplier_6bit
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




module multiplier_6bit(
input [5:0]a,b,
output [11:0]w
    );
    wire [5:0]x;
    wire [5:0]y;
    wire [5:0]z;
    wire [5:0]s;
    wire [2:0]c;
    wire [5:0]m;
    wire [5:0]r;
    wire p;
    
    multiplier_3bit M1(a[2:0],b[2:0],x[5:0]);
    assign w[2:0]=x[2:0];
    multiplier_3bit M2(a[5:3],b[2:0],y[5:0]);
    multiplier_3bit M3(a[2:0],b[5:3],z[5:0]);
    adder_6Nbit A1 (y[5:0],z[5:0],1'b0,s[5:0],c[0]);
    adder_6Nbit A2 (s[5:0],{1'b0,1'b0,1'b0,x[5:3]},1'b0,m[5:0],c[1]);
    assign w[5:3]=m[2:0];
    multiplier_3bit M4(a[5:3],b[5:3],r[5:0]);
    or o1 (p,c[0],c[1]);
    adder_6Nbit A3 (r[5:0],{2'b0,p,m[5:3]},1'b0,w[11:6],c[2]);
    

endmodule
