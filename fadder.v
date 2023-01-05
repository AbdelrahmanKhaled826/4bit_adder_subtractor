// Engineer: abdelrahman khaled elsayed 
// Create Date:    17:32:49 01/05/2023 
// Design Name: fall adder
// Module Name:    fadder 
// Project Name: adder and subtractor
// Revision 0.01 - File Created
// Additional Comments: add two input with carry

//////////////////////////////////////////////////////////////////////////////////
module fadder(
    input  x,
    input y,
    input cin,
    output sum,
    output cout
    );
assign sum= x^y^cin;
assign cout=( x & y)|(y & cin)|(x &cin);

endmodule
