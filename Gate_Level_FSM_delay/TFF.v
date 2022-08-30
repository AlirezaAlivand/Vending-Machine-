module TFF (clock, reset , T ,  Q);  
  input clock;
  input reset ;
  input T ;
  output reg Q ;
  
  always @(posedge clock) begin  
    if (reset==1 )  
      Q <= 0;  
    else  
        if (T==1)  
           Q <= ~Q;  
        else  
            Q <= Q;  
  end  
endmodule  