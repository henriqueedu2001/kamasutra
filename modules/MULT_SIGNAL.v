module MULT_SIGNAL(X_signal, Y_signal, Mult_signal);
    input X_signal; // X_signal = 0 -> positivo; X_signal = 1 -> negativo
    input Y_signal; // Y_signal = 0 -> positivo; Y_signal = 1 -> negativo
    output Mult_signal; // X_signal = 0 -> positivo; X_signal = 1 -> negativo
    
    assign Mult_signal = X_signal ^ Y_signal;
endmodule