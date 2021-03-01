module checkoffDigit1 ( OFF2 ,  A7 , A6 , A5 , A4 , OFF1 ) ;
input OFF2 , A7 , A6 , A5 , A4 ;

output OFF1 ;

assign OFF1 = (OFF2) & ~( A7 | A6 | A5 | A4) ;

endmodule 