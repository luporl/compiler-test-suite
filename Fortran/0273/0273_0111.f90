MODULE M
  TYPE TY
    REAL*2:: RR2
    COMPLEX(2)::CC2
  CONTAINS
    PROCEDURE :: WUNFORM
    PROCEDURE :: RUNFORM
     GENERIC :: WRITE(UNFORMATTED) => WUNFORM
     GENERIC :: READ(UNFORMATTED) => RUNFORM
  END TYPE

CONTAINS
    SUBROUTINE WUNFORM(DTV, UNIT, IOSTAT, IOMSG)
      CLASS(TY), INTENT(IN) :: DTV
      INTEGER, INTENT(IN) :: UNIT
      INTEGER, INTENT(OUT) :: IOSTAT
      CHARACTER(*), INTENT(INOUT) :: IOMSG
      WRITE(UNIT,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%RR2+1,DTV%CC2+1
    END SUBROUTINE
    SUBROUTINE RUNFORM(DTV, UNIT, IOSTAT, IOMSG)
       CLASS (TY), INTENT(INOUT)  :: DTV
       INTEGER,                  INTENT(IN)     :: UNIT
       INTEGER,                  INTENT(OUT)    :: IOSTAT
       CHARACTER (LEN=*),        INTENT(INOUT)  :: IOMSG
      READ (UNIT=UNIT, IOSTAT=IOSTAT, IOMSG=IOMSG) DTV%RR2,DTV%CC2
       DTV%RR2= DTV%RR2+1
       DTV%CC2= DTV%CC2+1
    END SUBROUTINE RUNFORM
END MODULE

PROGRAM MAIN
  USE M
TYPE(TY),POINTER::T1(:),T2(:)
INTEGER::G,F,Y,S,K,J,I,R
 ALLOCATE(T1(1),T2(1))
 T1(1)%RR2=1.5_2
 T1(1)%CC2=(3.5_2,4.5_2)
  OPEN(2,FILE='FORT.1',FORM="UNFORMATTED")
  WRITE(2) ((((((((T1,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)

  CLOSE(2)

  OPEN(55,FILE ='FORT.1',FORM="UNFORMATTED")
  READ(55)((((((((T2,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
  CLOSE(55,STATUS="DELETE")
  IF(T2(1)%RR2 /= 1.5_2+2 ) PRINT*,"101"
  IF(T2(1)%CC2 /= (5.5_2,4.5_2) ) PRINT*,"102"
  PRINT*,"PASS"
END PROGRAM

