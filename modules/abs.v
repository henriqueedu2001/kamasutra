// módulo de X
module ABS(X, Abs_X);
    input signed [7:0] X;
    output signed [7:0] Abs_X;

    
    //assign Abs_X = ~X + 1;
    assign Abs_X = X[7] ? -X : X;
  
    

endmodule