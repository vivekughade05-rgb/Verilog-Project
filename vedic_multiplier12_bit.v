`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 12:35:01 AM
// Design Name: 
// Module Name: vedic_multiplier12_bit
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


module vedic_multiplier12_bit(

input [11:0]a,b,
output [23:0]w
    );
    wire [11:0]x;
    wire [11:0]y;
    wire [11:0]z;
    wire [11:0]s;
    wire [2:0]c;
    wire [11:0]m;
    wire [11:0]r;
    wire p;
    
    multiplier_6bit M1(a[5:0],b[5:0],x[11:0]);
    assign w[5:0]=x[5:0];
    multiplier_6bit M2(a[11:6],b[5:0],y[11:0]);
    multiplier_6bit M3(a[5:0],b[11:6],z[11:0]);
    adder_12Nbit A1 (y[11:0],z[11:0],1'b0,s[11:0],c[0]);
    adder_12Nbit A2 (s[11:0],{6'b0,x[11:6]},1'b0,m[11:0],c[1]);
    assign w[11:6]=m[5:0];
    multiplier_6bit M4(a[11:6],b[11:6],r[11:0]);
    or o1 (p,c[0],c[1]);
    adder_12Nbit A3 (r[11:0],{5'b0,p,m[11:6]},1'b0,w[23:12],c[2]);
    
endmodule
