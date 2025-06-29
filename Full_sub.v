module full_sub(input a,b,c, output d,bo);
assign d=a^b^c;
assign w1=(~a)&b;
assign w2=(~a)&c;
assign w3=b&c;
assign bo=w1|w2|w3;
endmodule
