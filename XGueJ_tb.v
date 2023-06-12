// GUERRA, Jose Maria Angelo C. (S17)

`timescale 1ns / 1ps

// Module Name: Behavioral Modeling
// Boolean Function: F = (AB' + A'B) (C+D')

module behav_tb();
    // Declare local reg and wire identifiers
    reg[3:0] t_input;
    wire t_F;
    integer i;

    // Instantiate the design module under test
    behav dut(t_F, t_input[3], t_input[2], t_input[1], t_input[0]);

    // Generate stimulus, using initial or always statements
    initial
        begin
            t_input = 4'b0000;
            for(i = 1; i < 17; i++)
                #10 t_input = i; // Every 10ns, value 0000 becomes 0001 and so on until it goes back to 0000
        end

    // Display the output response (text or graphics (or both))
    initial
    begin
        $display("Written by Jose Maria Angelo Guerra (S17)");
        $display("F = (AB' + A'B) (C+D')");
        $display("Verilog Behavioral Model");

        $monitor("Time = %03d | A = %b B = %b C = %b D = %b | Output_F = %b",
                $time, t_input[3], t_input[2], t_input[1], t_input[0], t_F);
        $dumpfile("behav.vcd");
        $dumpvars();
    end
endmodule