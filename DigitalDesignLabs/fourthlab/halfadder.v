`timescale 1ns / 1ps

module halfadder(
input bit1,
input bit2,
output sum,
output carry
    );
    
    assign sum= bit1^bit2;
    assign carry= bit1 & bit2;
    
endmodule