`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 12:41:03 AM
// Design Name: 
// Module Name: FTP_multiplier_32
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


module floating_point32bit(
    input s0,
    input s1,
    input [7:0] e0,
    input [7:0] e1,
    input [22:0] m0,
    input [22:0] m1,
    output  SX,
    output reg[7:0] EY,
    output reg[22:0] MZ
    );
    wire [7:0]sum,d;
    wire [47:0] f;
    wire cout0,cout1,cout2,borrow;
    
    //adder_8bit F1({8'b01111111},e1,1'b0,b,cout0);
    //adder_8bit F2({8'b01111111},e0,1'b0,a,cout1);
    adder_8Nbit F3(e1,e0,1'b0,sum,cout2);
    sub_9Nbit sub1({cout2,sum},{8'b01111111},1'b0,d,borrow);
    xor(SX, s0, s1);
    
    vedic_mul_24bit V1({1'b1,m0},{1'b1,m1},f);
    always @(*)
    begin
    if(f[47])
    begin
    MZ<=f[46:24];
    EY<= d+1'b1;
    end
    else if (f[46])
    begin
    MZ<=f[45:23];
    EY<=d;
    end
    else
    begin
    MZ<=f[44:23];
    EY<=d;
    end
    end

endmodule
