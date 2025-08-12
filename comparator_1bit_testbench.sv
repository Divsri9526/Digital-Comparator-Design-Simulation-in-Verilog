module comparator_1bit_tb;
    reg A, B;
    wire A_eq_B, A_gt_B, A_lt_B;

    comparator_1bit uut (
        .A(A),
        .B(B),
        .A_eq_B(A_eq_B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
        $dumpfile("comparator_1bit_waveform.vcd");
        $dumpvars(1,comparator_1bit_tb);
        $display("A B | EQ GT LT");
        $monitor("%b %b | %b  %b  %b", A, B, A_eq_B, A_gt_B, A_lt_B);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end

endmodule
