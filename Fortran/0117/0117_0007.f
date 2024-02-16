      INTEGER N
      REAL  Q,S,ANS
      PARAMETER (N=50)
      PARAMETER (ANS=-734.0)
      REAL  A(1:N)
      REAL  B(1:N)

      DO 10 I=1,N
         A(I)=I - (I/3)*3
         B(I)=I - (I/3)*5
 10      CONTINUE
      
      CLOSE(10)

      S = 0.0;
      DO 20 I=1,N
         Q = A(I) + B(I);
         S = Q + S;
         Q = Q + N - A(I);
 20      CONTINUE
      CLOSE(20)

      S = S - Q;

      IF (S.EQ.ANS) THEN
         WRITE(6,*) 'OK : S = ',S
      ELSE
         WRITE(6,*) 'NG : S = ',S,', ANS = ',ANS
      END IF
      
      END




