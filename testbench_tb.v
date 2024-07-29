`timescale 1ns / 1ps

module tb_naand_gate;

    // Inputs
    reg A;
    reg B;

    // Output
    wire Vout;

    // Instantiate the naand_gate module
    naand_gate uut (
        .A(A), 
        .B(B), 
        .Vout(Vout)
    );

    initial begin
        // Initialize inputs
        A = 0;
        B = 0;

        // Wait 10 ns for global reset to finish
        #10;
        
        // Apply test vectors
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        // Finish simulation
        $finish;
    end
    
    initial begin
        $monitor("At time %t, A = %b, B = %b, Vout = %b", $time, A, B, Vout);
    end

endmodule
