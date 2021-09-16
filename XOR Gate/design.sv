`timescale 1ns/1ns

module my_xor(output myout, input inA, input inB);
  wire x, y, inA, inB, not_inA, not_inB;
  and(x, inA, not_inB);
  and(y, inB, not_inA);
  not(not_inA, inA);
  not(not_inB, inB);
  or(myout, x, y);
endmodule
