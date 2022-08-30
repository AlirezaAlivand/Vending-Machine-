module Gate_Level_FSM(
    input clock,
	 input reset ,
    input x,
    output [1:2] Z
    );
	 
	 wire TA , TB , TC ;
	 wire QA , QB , QC ;
	 
	 TFF U1( clock , reset ,  TA ,  QA );  
	 TFF U2(  clock, reset , TB ,  QB );  
	 TFF U3(  clock, reset ,  TC , QC  );  
     and (w1 , QA , QB) ;
      and (w2 , QA , QC) ;
       and (w3 , QB , QC) ;
		  or (Z[1] , w1 , w2 , w3) ;
		  assign Z[2] = QA ;
		  
		  and (p1 ,QB , QC , x) ;
		    and (p2 , QA , ~QB , ~QC , ~x) ;
			 or (TA , p1 , p2) ;
			 
			 and (TB , QC , x) ;
			 
			 assign TC = x ;
		  
endmodule
