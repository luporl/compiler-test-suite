CHARACTER(LEN=20) NAME
INTEGER NO
OPEN(10,FORM='FORMATTED')
DO
READ(10,FMT='(A20)',ADVANCE='NO',EOR=10,SIZE=IS,END=20) NAME
IF (IS < 20) CYCLE
READ(10,FMT='(I8)',ADVANCE='NO',EOR=10,SIZE=IS,END=20,IOSTAT=IO) NO
IF (IS < 8) CYCLE
GO TO 30
10 CYCLE
30 PRINT*,NAME,' ',NO,' ',IS
END DO
GO TO 40
20 PRINT*,'*** ok ***'
40 CLOSE(10,STATUS='DELETE')
END
