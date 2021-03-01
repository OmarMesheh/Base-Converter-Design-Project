module findInvalid ( A3 , A2 , A1 , A0 , E ) ;
input A3 , A2 , A1 , A0 ;
output E ;

assign E = ( A3 & A1 ) | ( A3 & A2 ) ;

endmodule 