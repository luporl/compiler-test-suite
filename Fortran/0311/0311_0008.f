      PROGRAM MAIN
        INTEGER*4 ERROR,I,S_DVT1,S_A,V_A
        DIMENSION S_DVT1(1000),S_A(1000),V_A(1000)
        DATA      S_A/500*1,500*2/
        DATA      V_A/500*1,500*2/
        DATA      ERROR/0/
C
          DO I=1,500,1
            S_DVT1(I)=S_A(I)
          END DO
          DO I=1,500,1
            S_A(50+I)=S_DVT1(I)
          END DO
C
          V_A(51:550)=V_A(1:500)
C
          DO I=1,1000,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF(ERROR .EQ. 0) THEN
            WRITE(6,*) 'OK'
          ELSE
            WRITE(6,*) 'NG'
          END IF
C
          STOP
      END PROGRAM MAIN
