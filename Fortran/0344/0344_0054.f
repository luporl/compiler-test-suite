      REAL   A(10)/1,2,3,4,5,10,9,8,7,6/
      REAL   B(10)/0,2,0,4,5,7,9,8,1,6/
      LOGICAL L1(10)/5*.FALSE.,5*.TRUE./
      LOGICAL L2(10)/3*.FALSE.,5*.TRUE.,2*.FALSE./
      DO 10 I=1,10
        IF(L1(I)) THEN
        L1(I)=A(I).EQ.B(I)
        L2(I)=L2(I).EQV.L1(I)
        ENDIF
  10  CONTINUE
      WRITE(6,*) L1
      STOP
      END
