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
     and #150(w1 , QA , QB) ;
      and #150(w2 , QA , QC) ;
       and #150(w3 , QB , QC) ;
		  or #250(Z[1] , w1 , w2 , w3) ;
		  assign Z[2] = QA ;
		  
		  and #200(p1 ,QB , QC , x) ;
		    and #250(p2 , QA , ~QB , ~QC , ~x) ;
			 or #150(TA , p1 , p2) ;
			 
			 and #150(TB , QC , x) ;
			 
			 assign TC = x ;
		  
endmodule
