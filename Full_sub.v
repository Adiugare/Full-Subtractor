// Full Subtractor Module
module full_sub(input a, b, c, output d, bo);
    
    // Compute the difference using XOR: A ⊕ B ⊕ C (C is Borrow-in)
    assign d = a ^ b ^ c;

    // Intermediate borrow terms:
    assign w1 = (~a) & b;   // Borrow occurs when A is 0 and B is 1
    assign w2 = (~a) & c;   // Borrow occurs when A is 0 and Bin is 1
    assign w3 = b & c;      // Borrow occurs when both B and Bin are 1

    // Final Borrow-out is the OR of all three conditions
    assign bo = w1 | w2 | w3;

endmodule
