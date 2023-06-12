// GUERRA, Jose Maria Angelo C. (S17)

`timescale 1ns / 1ps

// Module Name: Behavioral Modeling
// Boolean Function: F = (AB' + A'B) (C+D')

module behav(F,A,B,C,D);
    // Define input and output
    output reg F;
    input A,B,C,D;

    // Assign boolean function
    always @*
    begin
        F = ((A & ~B) | (~A & B)) & (C | ~D);
    end

endmodule