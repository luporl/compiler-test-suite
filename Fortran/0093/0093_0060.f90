
PROGRAM MAIN

COMPLEX::OBJW
REAL::R1,R2
 INTEGER::I
OBJW=(3.44,8.44)

 OPEN (UNIT=71, FILE='fort.80', FORM='UNFORMATTED')
WRITE(UNIT=71)(OBJW,I=1,3)     
CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.80', FORM='UNFORMATTED')
READ(UNIT=77)(R1,R2,I=1,3)     
CLOSE (UNIT=77,status='delete')


IF( R1 .ne. 3.44)print*,'101'
IF( R2 .ne. 8.44)print*,'102'



 PRINT*,'PASS'

END PROGRAM

