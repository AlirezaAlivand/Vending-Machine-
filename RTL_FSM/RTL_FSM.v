
module RTL_FSM(input clock,  input reset , input x , output reg [1:2] Z);

localparam 
state0 = 3'b000 , 
state1 = 3'b001 , 
state2 = 3'b010 , 
state3 = 3'b011 , 
state4 = 3'b100 , 
state5 = 3'b101 , 
state6 = 3'b110 , 
state7 = 3'b111 ;
reg [2:0] machine ;

always @(posedge clock)
begin 
if(reset==1)begin
machine <= state0 ;
end
else begin
   case (machine)
    state0 : begin
                 if(x==0)begin
					  machine <= state0 ;
					  end
					  else begin
					  machine <= state1 ;
					   end
               end
     state1 : begin
                   if(x==0)begin
					  machine <= state1 ;
					  end
					  else begin
					  machine <= state2 ;
					   end
               end
      state2 : begin
                  if(x==0)begin
					  machine <= state2 ;
					  end
					  else begin
					  machine <= state3 ;
					   end
               end
      state3 : begin
                   if(x==0)begin
					  machine <= state3 ;
					  end
					  else begin
					  machine <= state4 ;
					   end
               end
      state4 : begin
                   if(x==0)begin
					  machine <= state0 ;
					  end
					  else begin
					  machine <= state5 ;
					   end
               end
      state5 : begin
                   if(x==0)begin
					  machine <= state5 ;
					  end
					  else begin
					  machine <= state6 ;
					   end
               end
     state6 : begin
                   if(x==0)begin
					  machine <= state6 ;
					  end
					  else begin
					  machine <= state7 ;
					   end
               end
      state7 : begin
                   if(x==0)begin
					  machine <= state7 ;
					  end
					  else begin
					  machine <= state0 ;
					   end
               end
      default: begin
                    machine <= state0 ;
               end
   endcase
	end 
end

always @(machine)
begin
case (machine)
    state0 : begin
	 Z <= 2'b00 ;
	 end 
	 state1 : begin
	 Z <= 2'b00 ;
	 end 
	 state2 : begin
	 Z <= 2'b00 ;
	 end 
	 state3 : begin
	 Z <= 2'b10 ;
	 end 
	 state4 : begin
	 Z <= 2'b01 ;
	 end 
	 state5 : begin
	 Z <= 2'b11 ;
	 end 
	 state6 : begin
	 Z <= 2'b11 ;
	 end 
	 state7 : begin
	 Z <= 2'b11 ;
	 end 
	  default: begin
	  Z <= 2'b00 ;
               end
endcase
end

endmodule
