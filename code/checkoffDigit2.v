module checkoffDigit2 ( A11 , A10 , A9 , A8 ,OFF3 , OFF2 ) ;

input   A11 , A10 , A9 , A8 , OFF3 ;

output OFF2 ;

assign OFF2 =  ~( A11 | A10 | A9 | A8 ) & (OFF3) ;

endmodule 