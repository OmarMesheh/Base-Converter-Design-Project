module Register(A11,A10,A9,A8,A7,A6,A5,A4,A3, A2, A1, A0, clk, O11,O10,O9,O8,O7,O6,O5,O4,O3,O2,O1, O0);
input A11,A10,A9,A8,A7,A6,A5,A4,A3, A2, A1, A0, clk;
output O11,O10,O9,O8,O7,O6,O5,O4,O3, O2, O1, O0;
//D_FF (D, clk, Q, nQ);
D_FF (A0, clk, O0, nQ0);
D_FF (A1, clk, O1, nQ1);
D_FF (A2, clk, O2, nQ2);
D_FF (A3, clk, O3, nQ3);
D_FF (A4, clk, O4, nQ4);
D_FF (A5, clk, O5, nQ5);
D_FF (A6, clk, O6, nQ6);
D_FF (A7, clk, O7, nQ7);
D_FF (A8, clk, O8, nQ8);
D_FF (A9, clk, O9, nQ9);
D_FF (A10,clk, O10, nQ10);
D_FF (A11,clk, O11, nQ11);

endmodule
