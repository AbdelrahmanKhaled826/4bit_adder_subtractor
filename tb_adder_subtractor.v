`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:50:22 01/05/2023
// Design Name:   adder_subtractor
// Module Name:   C:/digital_desgin_examples/adder_and_suptractor/tb_adder_subtractor.v
// Project Name:  adder_and_suptractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_adder_subtractor;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;
	reg control;

	// Outputs
	wire [3:0] z;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	adder_subtractor uut (
		.x(x), 
		.y(y), 
		.control(control), 
		.z(z), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		control = 0;
#100;
x = 2;
y = 1;
control = 0;
#100;

x = 10;
y = 2;
control = 0;
#100;

x = 10;
y = 2;
control = 1;
#100;

x = 3;
y = 1;
control = 1;
#100;

x = 10;
y = 4;
control = 1;
#100;
	end
      
endmodule

