// Testbench for Full Subtractor
module full_sub_tb();

// Declare test inputs as reg and outputs as wire
reg a, b, c;         // a = Minuend, b = Subtrahend, c = Borrow-in
wire d, bo;          // d = Difference, bo = Borrow-out

// Instantiate the Full Subtractor Unit Under Test (UUT)
full_sub uut(a, b, c, d, bo);

// Begin the stimulus process
initial begin
    // Display column headers for clarity in output
    $display("A B Bin | D Bout");
    $monitor("%b %b  %b  | %b   %b", a, b, c, d, bo);

    // Apply all input combinations with 10 time units delay each
    a = 0; b = 0; c = 0; #10;
    a = 0; b = 0; c = 1; #10;
    a = 0; b = 1; c = 0; #10;
    a = 0; b = 1; c = 1; #10;
    a = 1; b = 0; c = 0; #10;
    a = 1; b = 0; c = 1; #10;
    a = 1; b = 1; c = 0; #10;
    a = 1; b = 1; c = 1; #10;

    // End the simulation
    $finish;
end

endmodule
