module FA(IN0 , IN1 , Cin , SUM , Cout);

input IN0 , IN1 , Cin ;
output SUM , Cout ;

assign SUM = IN0^IN1^Cin ;
assign Cout = (IN0 & IN1) | (IN1 & Cin) | (IN0 & Cin) ;

endmodule


module fiveBitsAdderSubtractor ( A0 , A1 , A2 , A3 , A4 , B0 , B1 , B2 , B3 , B4 , S , S0 , S1 , S2 , S3 , S4 , Cout );
input A0 , A1 , A2 , A3 , A4 , B0 , B1 , B2 , B3 , B4 , S ;
output S0 , S1 , S2 , S3 , S4, Cout ;

Xorgate ( out0 , B0 , S) ;
Xorgate ( out1 , B1 , S) ;
Xorgate ( out2 , B2 , S) ;
Xorgate ( out3 , B3 , S) ;
Xorgate ( out4 , B4 , S) ;

//FA(IN0 , IN1 , Cin , SUM , Cout);
FA(A0 , out0 , S , S0 , Cout0);
FA(A1 , out1 , Cout0 , S1 , Cout1);
FA(A2 , out2 , Cout1 , S2 , Cout2);
FA(A3 , out3 , Cout2 , S3 , Cout3);
FA(A4 , out4 , Cout3 , S4 , Cout);

endmodule



module hundredsMultiplier ( A0 , A1 , A2 , A3 , M0 , M1 , M2 , M3 , M4 , M5 , M6 , M7 , M8 , M9 );
input A0 , A1 , A2 , A3 ;
output M0 , M1 , M2 , M3 , M4 , M5 , M6 , M7 , M8 , M9 ;

assign M0 = 0 ;
assign M1 = 0 ;
assign M2 = A0 ;
assign M3 = A1 ;
assign M4 = A2 ;
//fiveBitsAdderSubtractor ( A0 , A1 , A2 , A3 , A4 , B0 , B1 , B2 , B3 , B4 , S , S0 , S1 , S2 , S3 , S4 , Cout );
fiveBitsAdderSubtractor ( A0 , A0 , A1 , A2 , A3 , A3 , A1 , A2 , A3 , 0 , 0 , M5 , M6 , M7 , M9 , M9 , Cout );  // S=0 to perform add op , also we don't care in S4 and Cout.

endmodule


module tensMultiplier (A0 , A1 , A2 , A3 , M0 , M1 , M2 , M3 , M4 , M5 , M6 ) ;
input A0 , A1 , A2 , A3 ;
output M0 , M1 , M2 , M3 , M4 , M5 , M6 ;

assign M0 = 0 ;
assign M1 = A0 ;
assign M2 = A1 ;

//fiveBitsAdderSubtractor ( A0 , A1 , A2 , A3 , A4 , B0 , B1 , B2 , B3 , B4 , S , S0 , S1 , S2 , S3 , S4 , Cout );
fiveBitsAdderSubtractor ( A0 , A1 , A2 , A3 , 0 ,  A2 , A3 , 0 , 0 , 0 , 0 , M3 , M4 , M5 , M6 , S4 , Cout ); // S=0 to perform add op , also we don't care in S4 and Cout.

endmodule 


module tenBitsAdderSubtractor(A0 , A1 , A2 , A3 , A4 , A5 , A6 , A7 , A8 , A9 , B0 , B1 , B2 , B3 , B4 , B5 , B6 , B7 , B8 , B9 , S , S0 , S1 , S2 , S3 , S4 , S5 , S6 , S7 , S8 , S9 , Cout);
input A0 , A1 , A2 , A3 , A4 , A5 , A6 , A7 , A8 , A9 , B0 , B1 , B2 , B3 , B4 , B5 , B6 , B7 , B8 , B9 , S;
output S0 , S1 , S2 , S3 , S4 , S5 , S6 , S7 , S8 , S9 , Cout;

Xorgate ( out0 , B0 , S) ;
Xorgate ( out1 , B1 , S) ;
Xorgate ( out2 , B2 , S) ;
Xorgate ( out3 , B3 , S) ;
Xorgate ( out4 , B4 , S) ;
Xorgate ( out5 , B0 , S) ;
Xorgate ( out6 , B1 , S) ;
Xorgate ( out7 , B2 , S) ;
Xorgate ( out8 , B3 , S) ;
Xorgate ( out9 , B4 , S) ;

//FA(IN0 , IN1 , Cin , SUM , Cout);
FA(A0 , out0 , S , S0 , Cout0);
FA(A1 , out1 , Cout0 , S1 , Cout1);
FA(A2 , out2 , Cout1 , S2 , Cout2);
FA(A3 , out3 , Cout2 , S3 , Cout3);
FA(A4 , out4 , Cout3 , S4 , Cout4);
FA(A5 , out5 , Cout4 , S5 , Cout5);
FA(A6 , out6 , Cout5 , S6 , Cout6);
FA(A7 , out7 , Cout6 , S7 , Cout7);
FA(A8 , out8 , Cout7 , S8 , Cout8);
FA(A9 , out9 , Cout8 , S9 , Cout);
endmodule


module BCDtoBinaryConverter (O0 , O1 , O2 , O3 , T0 , T1 , T2 , T3 , H0 , H1 , H2 , H3 , digit0 , digit1 , digit2 , digit3 , digit4 , digit5 , digit6 , digit7 , digit8 , digit9 ) ;
input O0 , O1 , O2 , O3 , T0 , T1 , T2 , T3 , H0 , H1 , H2 , H3 ;
output digit0 , digit1 , digit2 , digit3 , digit4 , digit5 , digit6 , digit7 , digit8 , digit9 ;

//hundredsMultiplier ( A0 , A1 , A2 , A3 , M0 , M1 , M2 , M3 , M4 , M5 , M6 , M7 , M8 , M9 );
hundredsMultiplier ( H0 , H1 , H2 , H3 , h0 , h1 , h2 , h3 , h4 , h5 , h6 , h7 , h8 , h9 );

//tensMultiplier (A0 , A1 , A2 , A3 , M0 , M1 , M2 , M3 , M4 , M5 , M6 ) ;
tensMultiplier (T0 , T1 , T2 , T3 , t0 , t1 , t2 , t3 , t4 , t5 , t6 ) ;

//tenBitsAdderSubtractor(A0 , A1 , A2 , A3 , A4 , A5 , A6 , A7 , A8 , A9 , B0 , B1 , B2 , B3 , B4 , B5 , B6 , B7 , B8 , B9 , S , S0 , S1 , S2 , S3 , S4 , S5 , S6 , S7 , S8 , S9 , Cout);
// Ones + Tens :
tenBitsAdderSubtractor(O0 , O1 , O2 , O3 , 0 , 0 , 0 , 0 , 0 , 0 , t0 , t1 , t2 , t3 , t4 , t5 , t6 , 0 , 0 , 0 , 0 , w0 , w1 , w2 , w3 , w4 , w5 , w6 , w7 , w8 , w9 , Cout);


// Ones + Tens + Hundreds :
tenBitsAdderSubtractor(w0 , w1 , w2 , w3 , w4 , w5 , w6 , w7 , w8 , w9 , h0 , h1 , h2 , h3 , h4 , h5 , h6 , h7 , h8 , h9 , 0 , digit0 , digit1 , digit2 , digit3 , digit4 , digit5 , digit6 , digit7 , digit8 , digit9 , Cout);
endmodule 