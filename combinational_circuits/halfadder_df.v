// Half Adder - Dataflow Modeling
module half_adder(
    input a,
    input b,
    output sum,
    output carry
);

    // Dataflow modeling using continuous assignments
    assign sum = a ^ b;        // XOR for sum
    assign carry = a & b;      // AND for carry

endmodule

// Test Bench for Half Adder
module half_adder_tb;
    reg a, b;
    wire sum, carry;

    // Instantiate the half adder
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $display("Half Adder Test Bench");
        $display("a | b | sum | carry");
        $display("--|---|-----|-------");
        
        // Test case 1: a=0, b=0
        a = 0; b = 0; #10;
        $display("%b | %b |  %b  |   %b", a, b, sum, carry);
        
        // Test case 2: a=0, b=1
        a = 0; b = 1; #10;
        $display("%b | %b |  %b  |   %b", a, b, sum, carry);
        
        // Test case 3: a=1, b=0
        a = 1; b = 0; #10;
        $display("%b | %b |  %b  |   %b", a, b, sum, carry);
        
        // Test case 4: a=1, b=1
        a = 1; b = 1; #10;
        $display("%b | %b |  %b  |   %b", a, b, sum, carry);
        
        $finish;
    end

endmodule