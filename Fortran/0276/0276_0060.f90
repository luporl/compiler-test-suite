real :: X
real,target :: TAR=50
X=10
OPEN( 35, FILE='FORT.3', ACCESS='DIRECT', RECL=20,FORM='FORMATTED' ) 
        WRITE( 35,FMT='(F10.3)', REC=1 ) X 
        READ( 35,FMT='(F10.3)', REC=1 ) FUN()
CLOSE (35,STATUS='DELETE' )
if(TAR .ne. 10)print*
PRINT*,"Pass"
CONTAINS
FUNCTION FUN()
real,pointer :: FUN
FUN=>TAR
END FUNCTION
END
