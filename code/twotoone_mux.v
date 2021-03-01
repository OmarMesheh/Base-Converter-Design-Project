module twotoone_mux(S, Q1, Q0, O);
input S, Q1, Q0;
output O;

assign O= Q1&S | Q0&~S;

endmodule