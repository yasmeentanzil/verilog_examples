// Half Adder - Behavioral Level Modeling
module half_adder(
    input a, b,
    output sum, carry
);

always @(*) begin
    sum = a ^ b;        // XOR for sum
    carry = a & b;      // AND for carry
end

endmodule