module D_FF (D, clk, Q, nQ);
input D , clk;
output Q, nQ;

//Invgate(in, out);
Invgate(D, notD);
//Nand_gate (in1, in2, out);

Nand_gate (D, clk, w1);

Nand_gate (notD, clk, w2);

Nand_gate (w1, nQ, Q);

Nand_gate (w2, Q, nQ);

endmodule