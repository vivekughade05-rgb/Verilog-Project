`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 12:22:13 AM
// Design Name: 
// Module Name: multiplier3_bit
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


module multiplier3_bit(
input [2:0]a,b,
output [5:0]m
    );
    
    wire [7:0]s;
    wire [4:0]cout;
    wire [1:0] sum;
    assign m[0]=a[0]&b[0];
    assign s[0]=a[1]&b[0];
    assign s[1]=a[0]&b[1];
    assign s[2]=a[2]&b[0];
    assign s[3]=a[1]&b[1];
    assign s[4]=a[0]&b[2];
    assign s[5]=a[2]&b[1];
    assign s[6]=a[1]&b[2];
    assign s[7]=a[2]&b[2];
    HA HA1 (s[0],s[1],m[1],cout[0]);
    FA_beh FA1(s[2],s[3],s[4],sum[0],cout[1]);
    HA HA2 (sum[0],cout[0],m[2],cout[2]);
    FA_beh FA2 (cout[1],s[5],s[6],sum[1],cout[3]);
    HA HA3 (sum[1],cout[2],m[3],cout[4]);
    FA_beh FA3 (s[7],cout[3],cout[4],m[4],m[5]);
    
    
endmodule
