module twos_complement_adder_tb;
reg [15:0] a;
reg [15:0] b;
reg sub;
wire [15:0] sum;
twos_complement_adder adder(
    .a(a),
    .b(b),
    .sub(sub),
    .sum(sum)
);
initial begin
    $display("a\tsub\tb\tsum");
    a = 16'b0111111111111110;
    b = 16'b0000000000000001;
    sub = 1'b0;
    #100 $monitor("%b\t%b\t%b\t%b", a, sub, b, sum);
    

    a = 16'b0111111111111111;
    b = 16'b0000000000000001;
    sub = 1'b1;
    #100 $monitor("%b\t%b\t%b\t%b", a, sub, b, sum);
  
    a = 16'b0000000000000000;
    b = 16'b0000000000000000;
    sub = 1'b0;
    #100 $monitor("%b\t%b\t%b\t%b", a, sub, b, sum);
    
    a = 16'b0111111111111111;
    b = 16'b0111111111111111;
    sub = 1'b1;
    #100 $monitor("%b\t%b\t%b\t%b", a, sub, b, sum);
end
endmodule

