module Quad2to1mux (A3,A2,A1,A0,B3,B2,B1,B0,S,O3,O2,O1,O0);
input A3,A2,A1,A0,B3,B2,B1,B0,S;
output O3,O2,O1,O0;
//twotoone_mux(S, Q1, Q0, O)
twotoone_mux(S, A0, B0, O0);
twotoone_mux(S, A1, B1, O1);
twotoone_mux(S, A2, B2, O2);
twotoone_mux(S, A3, B3, O3);
endmodule 
