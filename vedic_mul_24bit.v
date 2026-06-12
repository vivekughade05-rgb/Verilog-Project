`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 02:44:05 PM
// Design Name: 
// Module Name: vedic_mul_24bit
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


module vedic_mul_24bit(
input [23:0]a,b,
output [47:0]w
    );
    wire [23:0]x;
    wire [23:0]y;
    wire [23:0]z;
    wire [23:0]s;
    wire [2:0]c;
    wire [23:0]m;
    wire [23:0]r;
    wire p;
    
    vedic_multiplier_12bit M1(a[11:0],b[11:0],x[23:0]);
    assign w[11:0]=x[11:0];
    vedic_multiplier_12bit M2(a[23:12],b[11:0],y[23:0]);
    vedic_multiplier_12bit M3(a[11:0],b[23:12],z[23:0]);
    adder_24Nbit A1 (y[23:0],z[23:0],1'b0,s[23:0],c[0]);
    adder_24Nbit A2 (s[23:0],{12'b0,x[23:12]},1'b0,m[23:0],c[1]);
    assign w[23:12]=m[11:0];
    vedic_multiplier_12bit M4(a[23:12],b[23:12],r[23:0]);
    or o1 (p,c[0],c[1]);
    adder_24Nbit A3 (r[23:0],{11'b0,p,m[23:12]},1'b0,w[47:24],c[2]);
    
endmodule