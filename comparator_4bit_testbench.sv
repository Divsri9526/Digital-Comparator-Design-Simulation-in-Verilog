module comparator_4bit_tb;
    reg [3:0] A, B;
    wire A_eq_B, A_gt_B, A_lt_B;

    comparator_4bit uut (
        .A(A),
        .B(B),
        .A_eq_B(A_eq_B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
      $dumpfile("comparator_4bit_waveform.vcd");
      $dumpvars(1,comparator_4bit_tb);
      $display(" A \tA \tB \tB    | EQ GT LT");
      $monitor("%b\t(%d)\t%b\t(%d) | %b  %b  %b", A, A, B, B, A_eq_B, A_gt_B, A_lt_B);

        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b0101; B = 4'b0011; #10;
        A = 4'b1010; B = 4'b1100; #10;
        A = 4'b1111; B = 4'b1111; #10;
        $finish;
    end

endmodule
