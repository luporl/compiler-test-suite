MODULE M
  TYPE T
      COMPLEX::A
END TYPE T
 



END MODULE M

PROGRAM MAIN

USE M
TYPE(T),POINTER::OBJW(:)
INTEGER::G,F,Y,S,K,J,I,R
REAL::R1(4)
TYPE(T),TARGET::OBJ11(2)
OBJW=>OBJ11
OBJW(1)%A=(3.44,8.44)
OBJW(2)%A=(5.55,6.55)

 OPEN (UNIT=71, FILE='fort.76', FORM='FORMATTED')
WRITE(UNIT=71,*) ((((((((OBJW%A%RE,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
WRITE(UNIT=71,*) ((((((((OBJW%A%IM,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=71)

OPEN (UNIT=77, FILE='fort.76', FORM='FORMATTED')
READ(UNIT=77,*) ((((((((R1(1),R1(2),I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
READ(UNIT=77,*) ((((((((R1(3),R1(4),I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=77,status='delete')



IF( R1(1) .ne. 3.44)print*,'101'
IF( R1(2) .ne. 5.55)print*,'102'
IF( R1(3) .ne. 8.44)print*,'103'
IF( R1(4) .ne. 6.55)print*,'104'




 PRINT*,'PASS'

END PROGRAM

