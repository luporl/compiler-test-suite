      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                   
      DATA A           /42.,99.,421.,374.,53.,0.,100.,21.,232.,87681./ 
      DATA RIGHT_RESULT/53.,53., 53., 53.,53.,0.,100.,21.,232.,87681./ 
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I                                                        
      I=5*INT(COSH(0.0))                                               
                                                                       
      A(1:5)=A(I)                                                      
                                                                       
      DO I=1,10                                                        
         IF (A(I) .NE. RIGHT_RESULT(I)) NO_GOOD = .TRUE.                 
      ENDDO                                                            
      IF (NO_GOOD) THEN                                                
         WRITE (6,*) '?????? NG ??????'                        
         WRITE (6,*) '< ACTUAL RESULT >   ',A                          
         WRITE (6,*) '< RIGHT  RESULT >   ',RIGHT_RESULT               
         WRITE (6,*) '?????? NG ??????'                        
      ELSE                                                             
         WRITE (6,*) '!!!!!! OK !!!!!!'                        
      ENDIF                                                            
      STOP                                                             
      END                                                              
