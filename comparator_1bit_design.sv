module comparator_1bit (
    input A,
    input B,
    output A_eq_B,  // A equals B
    output A_gt_B,  // A greater than B
    output A_lt_B   // A less than B
);

    assign A_eq_B = (A == B);
    assign A_gt_B = (A > B);
    assign A_lt_B = (A < B);

endmodule
