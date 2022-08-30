`timescale 1ns / 1ps
module RTL_FSM_TEST;

	reg clock;
	reg reset ;
	reg x;

	wire [1:2] Z;
	RTL_FSM uut (
		.clock(clock), 
		.reset(reset),
		.x(x), 
		.Z(Z)
	);

	initial begin
		clock = 0;
		x = 0;
		reset = 1 ;
		#100;
		reset = 0 ;
        x = 1 ;
		  	x = 0;
		#100;
        x = 1 ;
		  #100;
        x = 1 ;
		  #100;
        x = 1 ;
		  #100;
        x = 1 ;
		  #100;
        x = 1 ;
		  #100;
        x = 1 ;
		  #100;
        x = 1 ;
		  #100;
        x = 1 ;
		  		x = 0;
		#100;
        x = 1 ;
		  	x = 0;
		#100;
        x = 1 ;
		  

	end
	initial begin
	forever 
	#10 clock = ~clock ;
	end
      
endmodule

