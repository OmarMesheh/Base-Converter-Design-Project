module SevenSegmentDriver ( A3 , A2 , A1 , A0 , E1 , E2 , E3 , OFF , Start , a , b , c , d , e , f , g );

input A0 , A1 , A2 , A3 , E1 , E2 , E3 , OFF , Start;
output a , b , c , d , e , f , g ;

assign a = (~A3 & ~A2 & ~A1 & A0) | (~A3 & A2 & ~A1 & ~A0) | (A3 & ~A2 & A1 & A0) | (A3 & A2 & ~A1 & A0) | E1 | E2 | E3 | ~Start | OFF ;

assign b = (~A3 & A2 & ~A1 & A0) | (A2 & A1 & ~A0) | (A3 & A1 & A0) | (A3 & A2 & ~A0) | E1 | E2 | E3 | ~Start | OFF ;

assign c = (~A3 & ~A2 & A1 & ~A0) | (A3 & A2 & ~A0) | (A3 & A2 & A1) | E1 | E2 | E3 | ~Start | OFF ;

assign d = (~A3 & ~A2 & ~A1 & A0) | (~A3 & A2 & ~A1 & ~A0) | (A2 & A1 & A0) | (A3 & ~A2 & A1 & ~A0) | E1 | E2 | E3 | ~Start | OFF ;

assign e = (~A3 & A0) | (~A3 & A2 & ~A1) | (~A2 & ~A1 & A0) | E1 | E2 | E3 | ~Start | OFF ;

assign f = (~A3 & ~A2 & A0) | (~A3 & ~A2 & A1) | (~A3 & A1 & A0) | (A3 & A2 & ~A1 & A0) | E1 | E2 | E3 | ~Start | OFF ;

assign g = ((~A3 & ~A2 & ~A1) | (~A3 & A2 & A1 & A0) | (A3 & A2 & ~A1 & ~A0)) &~( E1 | E2 | E3) | ~Start | OFF ;

endmodule