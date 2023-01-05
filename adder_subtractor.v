`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: studant
// Engineer: abdelrahman khaled
// Create Date:    17:14:18 01/05/2023 
// Design Name: adder and subtractor
// Module Name:    adder_subtractor 
// Project Name: adder and subtractor
//////////////////////////////////////////////////////////////////////////////////
module adder_subtractor( 
input [3:0] x,
input [3:0] y,
input control,
output [3:0] z,
output cout
    );
	wire [3:0] sig;
	assign sig[0]=y[0]^control;
	assign sig[1]=y[1]^control;
	assign sig[2]=y[2]^control;
	assign sig[3]=y[3]^control;
fourbi_adder u0(
.x(x),
.y(sig),
.cin(control),
.sum(z),
.cout(cout)
);

endmodule
