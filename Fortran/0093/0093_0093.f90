
PROGRAM MAIN

COMPLEX::OBJW1,OBJW2,OBJR1,OBJR2
OBJW1=(3.44,8.44)
OBJW2=(5.44,6.44)

 OPEN (UNIT=71, FILE='fort.81', FORM='FORMATTED')
     WRITE(UNIT=71,FMT='(2F5.2)')OBJW1%RE,OBJW2%RE
     WRITE(UNIT=71,FMT='(2F5.2)')OBJW1%IM,OBJW2%IM

     CLOSE (UNIT=71)


OPEN (UNIT=77, FILE='fort.81', FORM='FORMATTED')
     READ(UNIT=77,FMT='(2F5.2)')OBJR1%RE,OBJR2%RE
     READ(UNIT=77,FMT='(2F5.2)')OBJR1%IM,OBJR2%IM
     CLOSE (UNIT=77,status='delete')


IF( OBJR1%RE .ne. 3.44)print*,'101'
IF( OBJR1%IM .ne. 8.44)print*,'102'
IF( OBJR2%RE .ne. 5.44)print*,'103'
IF( OBJR2%IM .ne. 6.44)print*,'104'



 PRINT*,'PASS'

END PROGRAM

