`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: abdelrahman khaled elsayed 
// Create Date:    18:55:05 01/05/2023 
// Design Name: 4bit fall adder
// Module Name:    fourbi_adder 
//////////////////////////////////////////////////////////////////////////////////
module fourbi_adder(
    input [3:0] x,
    input [3:0] y,
    input cin,
    output [3:0] sum,
	output cout
    );
wire [2:0] sig;

fadder f0(x[0],y[0],cin,sum[0],sig[0]);
fadder f1(x[1],y[1],sig[0],sum[1],sig[1]);
fadder f2(x[2],y[2],sig[1],sum[2],sig[2]);
fadder f3(x[3],y[3],sig[2],sum[3],cout);

endmodule
