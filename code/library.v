module Nand_gate (in1, in2, out);
input in1, in2;
output out;
assign out= ~(in1&in2);
endmodule

module Nor_gate (in1, in2, out);
input in1, in2;
output out;
assign out= ~(in1|in2);
endmodule

module Nand_gate3 (in1, in2, in3, out);
input in1, in2, in3;
output out;
assign out= ~(in1&in2&in3);
endmodule

module Xorgate2(in1, in2, out);
input in1, in2;
output out;
assign out= in1^in2;
endmodule

module Norgate4(in1, in2, in3, in4, out);
input in1, in2, in3, in4;
output out;
assign out= ~(in1|in2|in3|in4);
endmodule

module Norgate2(in1, in2, out);
input in1, in2;
output out;
assign out= ~(in1|in2);
endmodule

module Invgate(in, out);
input in;
output out;
assign out= ~in;
endmodule

module Xorgate ( out , in1 , in0) ;
input in1 , in0 ;
output out ;
assign out = in1 ^ in0 ;
endmodule

module Andgate(out , in1 , in0) ;
input in1 , in0 ;
output out ;
assign out = in1 & in0 ;
endmodule 

