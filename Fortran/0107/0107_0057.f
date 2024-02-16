      PROGRAM MAIN                                                  
      REAL,DIMENSION(10)::A,RIGHT_RESULT                                   
      DATA A/13.,87.,468.,678.,4068.,4.,514.,87.,179.,47681./          
      DATA RIGHT_RESULT/10*47681./                                     
      LOGICAL NO_GOOD/.FALSE./                                         
      INTEGER I                                                        
                                                                       
      A(1:10)=A(10)                                                    
                                                                       
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
