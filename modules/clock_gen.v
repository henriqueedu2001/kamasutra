`timescale 1ns/1ps

module clock_gen(clk);
    output clk;
    reg clk;

    initial begin
        clk = 0;
    end

    always begin
        #100 clk = ~clk;
    end
endmodule