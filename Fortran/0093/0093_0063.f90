
PROGRAM MAIN

COMPLEX::OBJW
REAL::R1,R2
OBJW=(3.44,8.44)

 OPEN (UNIT=71, FILE='fort.81', FORM='FORMATTED')
     WRITE(UNIT=71,FMT='(F5.2)')OBJW%RE
     WRITE(UNIT=71,FMT='(F5.2)')OBJW%IM

     CLOSE (UNIT=71)


OPEN (UNIT=77, FILE='fort.81', FORM='FORMATTED')
     READ(UNIT=77,FMT='(F5.2)')R1
     READ(UNIT=77,FMT='(F5.2)')R2
     CLOSE (UNIT=77,status='delete')


IF( R1 .ne. 3.44)print*,'101'
IF( R2 .ne. 8.44)print*,'102'



 PRINT*,'PASS'

END PROGRAM

