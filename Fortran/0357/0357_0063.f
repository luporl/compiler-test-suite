      INTEGER N, N2
      REAL  Q, ANS, INIT
      PARAMETER (N=50)
      PARAMETER (N2=80)
      PARAMETER (ANS=-873.668152)
      PARAMETER (INIT=24.9010334)
      DOUBLE PRECISION  A(1:N2)
      DOUBLE PRECISION  V, Z
      DOUBLE PRECISION  B(1:N2)

      DO 5 I=1,N2
         A(I) = 0.1*I
         B(I) = 0.1*I
 5    CONTINUE
      CLOSE(5)

      V = INIT/100.0 - A(N);
      Z = INIT/120.0 - B(N);

      DO 10 I=15,N-1
         A(1) = V*Z
         A(I) = V*Z
         A(I-2) = V*Z
         A(I+1) = V*Z
         A(I-1) = V*Z
         B(I-1) = V*Z
         B(I-3) = V*Z
         B(2) = V*Z
         B(I+2) = V*Z
         A(N) = V*Z
         A(N-1) = V*Z
         B(N-9) = V*Z
         A(I+2) = V*Z
         A(N-I) = V*Z
         A(N-I) = V*Z
         A(N-I+4) = V-Z
         A(N-I+1) = V*Z
         A(N-I+2) = V*Z
         A(N-I+3) = V*Z
         B(I+2) = V*Z
         B(N-I) = V*Z
         B(N-I) = V*Z
         B(N-I+4) = V-Z
         B(N-I+1) = V*Z
         B(N-I+2) = V*Z
         B(N-I+3) = V*Z
         A(1) = A(1) - V+Z
         A(I) = A(I) - V+Z
         A(I-2) = A(I-2) - V+Z
         A(I+1) = A(I+1) - V+Z
         A(I-1) = A(I-1) - V+Z
         B(I-1) = B(I-1) - V+Z
         B(I-3) = B(I-3) - V+Z
         B(2) = B(2) - V+Z
         B(I+2) = B(I+2) - V+Z
         A(N) = A(N) - V+Z
         A(N-1) = A(N-1) - V+Z
         B(N-9) = B(N-9) - V+Z
         A(I+2) = A(I+2) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I+4) = A(N-I) - V*Z
         A(N-I) = A(N-I) - V*Z
         A(N-I+1) = A(N-I+1) - V+Z
         A(N-I+2) = A(N-I+2) - V+Z
         A(N-I+3) = A(N-I+3) - V+Z
         B(I+1) = B(I+1) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I+1) = B(N-I+1) - V-Z
         B(N-I+1) = B(N-I+1) - V+Z
         B(N-I+2) = B(N-I+1) - V+Z
         B(N-I+3) = B(N-I+1) - V+Z
         A(I-1) = V-Z
         A(I-3) = V+Z
         B(I-2) = V+Z
         B(I-3) = V-Z
         B(5) = V+Z
         A(I) = A(I) - 1
         A(I-1) = A(I-1) - 1
         A(I-2) = A(I-2) - 1
         A(I-3) = A(I-3) - 1
         A(I-4) = A(I-4) - 1
         A(I-5) = A(I-5) - 1
         A(N-I+1) = A(N-I+1) - 1
         A(I-1) = A(I) - 1
         A(I) = A(I-1) - 1
         A(N-I+2) = A(N-I+2) - 1
         A(N-I+3) = A(N-I+3) - 1
         A(N-I+4) = A(N-I+4) - 1
         A(N) = A(I) - 1
         A(I) = A(N) - 1
         A(N) = A(I) - 1
         A(I) = A(I) - 1
         A(I-2) = A(N-2) - 1
         A(I-3) = A(N) - 1
         A(N) = V-Z
         A(N-1) = V+Z
         B(N-9) = V-Z
         B(I) = V+Z
         A(I-1) = V/Z
         A(I-3) = V/Z
         A(I-2) = V-Z
         A(I+1) = V/Z
         A(I-3) = V*Z
         B(I+10) = V*Z
         B(I-8) = V*Z
         B(2) = V*Z
         B(I+2) = V*Z
         A(N) = V*Z
         A(N-1) = V*Z
         B(N-9) = V*Z
         A(I+2) = V*Z
         A(N-I) = V*Z
         A(N-I) = V*Z
         A(N-I+1) = V-Z
         A(N-I) = A(N-I) + V+Z
         A(N-I+1) = V*Z
         A(N-I+2) = V*Z
         A(N-I+3) = V*Z
         B(I+2) = V*Z
         B(N-I) = V*Z
         B(N-I) = V*Z
         B(N-I+1) = B(N-I) + V-Z
         B(N-I) = B(N-I) - V+Z
         B(N-I+1) = V*Z
         B(N-I+2) = V*Z
         B(N-I+3) = V*Z
         A(1) = A(1) - V+Z
         A(I) = A(I) - V+Z
         A(I-2) = A(I-2) - V+Z
         A(I+1) = A(I+1) - V+Z
         A(I-1) = A(I-1) - V+Z
         B(I-1) = B(I-1) - V+Z
         B(I-3) = B(I-3) - V+Z
         B(2) = B(2) - V+Z
         B(I+2) = B(I+2) - V+Z
         A(N) = A(N) - V+Z
         A(N-1) = A(N-1) - V+Z
         B(N-9) = B(N-9) - V+Z
         A(I+2) = A(I+2) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I+1) = A(N-I) - V*Z
         A(N-I+1) = A(N-I+1) - V+Z
         A(N-I+2) = A(N-I+2) - V+Z
         A(N-I+3) = A(N-I+3) - V+Z
         B(I+2) = B(I+2) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I+1) - V-Z
         B(N-I) = B(N-I) - V+Z
         B(N-I+1) = B(N-I) - V+Z
         B(N-I+2) = B(N-I) - V+Z
         B(N-I+3) = B(N-I+4) - V+Z
         A(I-1) = V-Z
         A(I-3) = V+Z
         B(I-2) = V+Z
         B(I-3) = V-Z
         B(5) = V+Z
         A(I) = A(I) - 1
         A(I-1) = A(I-1) - 1
         A(I-2) = A(I-2) - 1
         A(I-3) = A(I-3) - 1
         A(I-4) = A(I-4) - 1
         A(I-5) = A(I-5) - 1
         A(N-I+1) = A(N-I+1) - 1
         A(I-1) = A(I) - 1
         A(I) = A(I-1) - 1
         A(N-I+2) = A(N-I+2) - 1
         A(N-I+3) = A(N-I+3) - 1
         A(N-I+4) = A(N-I+4) - 1
         A(N) = A(I) - 1
         A(I) = A(N) - 1
         A(N) = A(I) - 1
         A(I) = A(I) - 1
         A(I-2) = A(N-2) - 1
         A(I-3) = A(N) - 1
         A(N) = V-Z
         A(N-1) = V+Z
         B(N-9) = V-Z
         B(I) = V+Z
         A(1) = V*Z
         A(I) = V*Z
         A(I-2) = V*Z
         A(I+1) = V*Z
         A(I-1) = V*Z
         B(I-1) = V*Z
         B(I-3) = V*Z
         B(2) = V*Z
         B(I+2) = V*Z
         A(N) = V*Z
         A(N-1) = V*Z
         B(N-9) = V*Z
         A(I+2) = V*Z
         A(N-I) = V*Z
         A(N-I) = V*Z
         A(N-I+4) = V-Z
         A(N-I) = V+Z
         A(N-I+1) = V*Z
         A(N-I+2) = V*Z
         A(N-I+3) = V*Z
         B(I+2) = V*Z
         B(N-I) = V*Z
         B(N-I) = V*Z
         B(N-I+4) = V-Z
         B(N-I) = V+Z
         B(N-I+1) = V*Z
         B(N-I+2) = V*Z
         B(N-I+3) = V*Z
         A(1) = A(1) - V+Z
         A(I) = A(I) - V+Z
         A(I-2) = A(I-2) - V+Z
         A(I+1) = A(I+1) - V+Z
         A(I-1) = A(I-1) - V+Z
         B(I-1) = B(I-1) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I) = A(N-I+4) - V*Z
         A(N-I) = A(N-I) - V*Z
         A(N-I+1) = A(N-I+1) - V+Z
         A(N-I+2) = A(N-I+2) - V+Z
         A(N-I+3) = A(N-I+3) - V+Z
         B(I+2) = B(I+2) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I+4) - V-Z
         B(N-I) = B(N-I+1) - V+Z
         B(N-I+1) = B(N-I+2) - V+Z
         B(N-I+2) = B(N-I+3) - V+Z
         B(N-I+3) = B(N-I+5) - V+Z
         A(I-1) = V-Z
         A(I-3) = V+Z
         B(I-2) = V+Z
         B(I-3) = V-Z
         B(5) = V+Z
         A(I) = A(I) - 1
         A(I-1) = A(I-1) - 1
         A(I-2) = A(I-2) - 1
         A(I-3) = A(I-3) - 1
         A(I-4) = A(I-4) - 1
         A(I-5) = A(I-5) - 1
         A(N-I+1) = A(N-I+1) - 1
         A(I-1) = A(I) - 1
         A(I) = A(I-1) - 1
         A(N-I+2) = A(N-I+2) - 1
         A(N-I+3) = A(N-I+3) - 1
         A(N-I+4) = A(N-I+4) - 1
         A(N) = A(I) - 1
         A(I) = A(N) - 1
         A(N) = A(I) - 1
         A(I) = A(I) - 1
         A(I-2) = A(N-2) - 1
         A(I-3) = A(N) - 1
         A(N) = V-Z
         A(N-1) = V+Z
         B(N-9) = V-Z
         B(I) = V+Z
         A(1) = V*Z
         A(I) = V*Z
         A(I-2) = V*Z
         A(I+1) = V*Z
         A(I-1) = V*Z
         B(I-1) = V*Z
         B(I-3) = V*Z
         B(2) = V*Z
         B(I+2) = V*Z
         A(N) = V*Z
         A(N-1) = V*Z
         B(N-9) = V*Z
         A(I+2) = V*Z
         A(N-I) = V*Z
         A(N-I) = V*Z
         A(N-I+4) = V-Z
         A(N-I) = A(N-I) - V+Z
         A(N-I+1) = V*Z
         A(N-I+2) = V*Z
         A(N-I+3) = V*Z
         B(I+2) = V*Z
         B(N-I) = V*Z
         B(N-I) = V*Z
         B(N-I+1) = V-Z
         B(N-I) = V+Z
         B(N-I+1) = V*Z
         B(N-I+2) = V*Z
         B(N-I+3) = V*Z
         A(1) = A(1) - V+Z
         A(I) = A(I) - V+Z
         A(I-2) = A(I-2) - V+Z
         A(I+1) = A(I+1) - V+Z
         A(I-1) = A(I-1) - V+Z
         B(I-1) = B(I-1) - V+Z
         B(I-3) = B(I-3) - V+Z
         B(2) = B(2) - V+Z
         B(I+2) = B(I+2) - V+Z
         A(N) = A(N) - V+Z
         A(N-1) = A(N-1) - V+Z
         B(N-9) = B(N-9) - V+Z
         A(I+2) = A(I+2) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I+2) = A(N-I) - V*Z
         A(N-I) = A(N-I) - V*Z
         A(N-I+1) = A(N-I+1) - V+Z
         A(N-I+2) = A(N-I+2) - V+Z
         A(N-I+3) = A(N-I+3) - V+Z
         B(I+2) = B(I+2) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I+1) = B(N-I+2) - V-Z
         B(N-I) = B(N-I) - V+Z
         B(N-I+1) = B(N-I+1) - V+Z
         B(N-I+2) = B(N-I+4) - V+Z
         B(N-I+3) = B(N-I+4) - V+Z
         A(I-1) = V-Z
         A(I-3) = V+Z
         B(I-2) = V+Z
         B(I-3) = V-Z
         B(5) = V+Z
         A(I) = A(I) - 1
         A(I-1) = A(I-1) - 1
         A(I-2) = A(I-2) - 1
         A(I-5) = A(I-5) - 1
         A(N-I+1) = A(N-I+1) - 1
         A(I-1) = A(I) - 1
         A(I) = A(I-1) - 1
         A(N-I+2) = A(N-I+2) - 1
         A(N-I+3) = A(N-I+3) - 1
         A(N-I+4) = A(N-I+4) - 1
         A(N) = A(I) - 1
         A(I) = A(N) - 1
         A(N) = A(I) - 1
         A(I) = A(I) - 1
         A(I-2) = A(N-2) - 1
         A(I-3) = A(N) - 1
         A(N) = V-Z
         A(N-1) = V+Z
         B(N-9) = V-Z
         B(I) = V+Z
         A(1) = V*Z
         A(I) = V*Z
         A(I-2) = V*Z
         A(I+1) = V*Z
         A(I-1) = V*Z
         B(I-1) = V*Z
         B(I-3) = V*Z
         B(2) = V*Z
         B(I+2) = V*Z
         A(N) = V*Z
         A(N-1) = V*Z
         B(N-9) = V*Z
         A(I+2) = V*Z
         A(N-I) = V*Z
         A(N-I) = V*Z
         A(N-I+4) = V-Z
         A(N-I) = V+Z
         A(N-I+1) = V*Z
         A(N-I+2) = V*Z
         A(N-I+3) = V*Z
         B(I+2) = V*Z
         B(N-I) = V*Z
         B(N-I) = V*Z
         B(N-I+4) = V-Z
         B(N-I) = V+Z
         B(N-I+1) = V*Z
         B(N-I+2) = V*Z
         B(N-I+3) = V*Z
         A(1) = A(1) - V+Z
         A(I) = A(I) - V+Z
         A(I-2) = A(I-2) - V+Z
         A(I+1) = A(I+1) - V+Z
         A(I-1) = A(I-1) - V+Z
         B(I-1) = B(I-1) - V+Z
         B(I-3) = B(I-3) - V+Z
         B(2) = B(2) - V+Z
         B(I+2) = B(I+2) - V+Z
         A(N) = A(N) - V+Z
         A(N-1) = A(N-1) - V+Z
         B(N-9) = B(N-9) - V+Z
         A(I+2) = A(I+2) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I+1) = A(N-I+2) - V*Z
         A(N-I) = V*Z
         A(N-I+1) = A(N-I+1) - V+Z
         A(N-I+2) = A(N-I+2) - V+Z
         A(N-I+3) = A(N-I+3) - V+Z
         B(I+2) = B(I+2) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I+4) - V-Z
         B(N-I+3) = B(N-I+2) - V+Z
         B(N-I+1) = B(N-I+3) - V+Z
         B(N-I+2) = B(N-I+4) - V+Z
         B(N-I+3) = B(N-I+5) - V+Z
         A(I-1) = V-Z
         A(I-3) = V+Z
         B(I-2) = V+Z
         B(I-3) = V-Z
         B(5) = V+Z
         A(I) = A(I) - 1
         A(I-1) = A(I-1) - 1
         A(I-2) = A(I-2) - 1
         A(I-3) = A(I-3) - 1
         A(I-4) = A(I-4) - 1
         A(I-5) = A(I-5) - 1
         A(N-I+1) = A(N-I+1) - 1
         A(I-1) = A(I) - 1
         A(I) = A(I-1) - 1
         A(N-I+2) = A(N-I+2) - 1
         A(N-I+3) = A(N-I+3) - 1
         A(N-I+4) = A(N-I+4) - 1
         A(N) = A(I) - 1
         A(I) = A(N) - 1
         A(N) = A(I) - 1
         A(I) = A(I) - 1
         A(I-2) = A(N-2) - 1
         A(I-3) = A(N) - 1
         A(N) = V-Z
         A(N-1) = V+Z
         B(N-9) = V-Z
         B(I) = V+Z
         A(1) = V*Z
         A(I) = V*Z
         A(I-2) = V*Z
         A(I+1) = V*Z
         A(I-1) = V*Z
         B(I-1) = V*Z
         B(I-3) = V*Z
         B(2) = V*Z
         B(I+2) = V*Z
         A(N) = V*Z
         A(N-1) = V*Z
         B(N-9) = V*Z
         A(N-I) = V*Z
         A(N-I+4) = V-Z
         A(N-I+1) = V*Z
         A(N-I+2) = V*Z
         A(N-I+3) = V*Z
         B(I+2) = V*Z
         B(N-I) = V*Z
         B(N-I) = V*Z
         B(N-I+4) = V-Z
         B(N-I+1) = V*Z
         B(N-I+2) = V*Z
         B(N-I+3) = V*Z
         A(1) = A(1) - V+Z
         A(I) = A(I) - V+Z
         A(I-2) = A(I-2) - V+Z
         A(I+1) = A(I+1) - V+Z
         A(I-1) = A(I-1) - V+Z
         B(I-1) = B(I-1) - V+Z
         B(I-3) = B(I-3) - V+Z
         B(2) = B(2) - V+Z
         B(I+2) = B(I+2) - V+Z
         A(N) = A(N) - V+Z
         A(N-1) = A(N-1) - V+Z
         B(N-9) = B(N-9) - V+Z
         A(I+2) = A(I+2) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I+3) = A(N-I+2) - V*Z
         A(N-I+1) = A(N-I+1) - V+Z
         A(N-I+2) = A(N-I+2) - V+Z
         A(N-I+3) = A(N-I+3) - V+Z
         B(I+2) = B(I+2) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N+3) - V-Z
         B(N-I) = B(N-1) - V+Z
         B(N-I+1) = B(N-2) - V+Z
         B(N-I+2) = B(N-3) - V+Z
         B(N-I+3) = B(N-I+4) - V+Z
         A(I-1) = V-Z
         A(I-3) = V+Z
         B(I-2) = V+Z
         B(I-3) = V-Z
         B(5) = V+Z
         A(I) = A(I) - 1
         A(I-1) = A(I-1) - 1
         A(I-2) = A(I-2) - 1
         A(I-3) = A(I-3) - 1
         A(I-4) = A(I-4) - 1
         A(I-5) = A(I-5) - 1
         A(N-I+1) = A(N-I+1) - 1
         A(I-1) = A(I) - 1
         A(I) = A(I-1) - 1
         A(N-I+2) = A(N-I+2) - 1
         A(N-I+3) = A(N-I+3) - 1
         A(N-I+4) = A(N-I+4) - 1
         A(N) = A(I) - 1
         A(I) = A(N) - 1
         A(N) = A(I) - 1
         A(I) = A(I) - 1
         A(I-2) = A(N-2) - 1
         A(I-3) = A(N) - 1
         A(N) = V-Z
         A(N-1) = V+Z
         B(N-9) = V-Z
         B(I) = V+Z
         A(1) = V*Z
         A(I) = V*Z
         A(I-2) = V*Z
         A(I+1) = V*Z
         A(I-1) = V*Z
         B(I-1) = V*Z
         B(I+2) = V*Z
         A(N) = V*Z
         A(N-1) = V*Z
         B(N-9) = V*Z
         A(I+2) = V*Z
         A(N-I) = V*Z
         A(N-I) = V*Z
         A(N-4) = V-Z
         A(N-I+1) = V*Z
         A(N-I+2) = V*Z
         A(N-I+3) = V*Z
         B(I+2) = V*Z
         B(N-I) = V*Z
         B(N-I) = V*Z
         B(N-I+4) = V-Z
         B(N-I) = V+Z
         B(N-I+1) = V*Z
         B(N-I+2) = V*Z
         B(N-I+3) = V*Z
         A(1) = A(1) - V+Z
         A(I) = A(I) - V+Z
         A(I-2) = A(I-2) - V+Z
         A(I+1) = A(I+1) - V+Z
         A(I-1) = A(I-1) - V+Z
         B(I-1) = B(I-1) - V+Z
         B(I-3) = B(I-3) - V+Z
         B(2) = B(2) - V+Z
         B(I+2) = B(I+2) - V+Z
         A(N) = A(N) - V+Z
         A(N-1) = A(N-1) - V+Z
         B(N-9) = B(N-9) - V+Z
         A(I+2) = A(I+2) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I+5) = A(N-I+2) - V*Z
         A(N-I+3) = A(N-I) - V*Z
         A(N-I+1) = A(N-I+1) - V+Z
         A(N-I+2) = A(N-I+2) - V+Z
         A(N-I+3) = A(N-I+3) - V+Z
         B(I+2) = B(I+2) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I+1) = B(N-I) - V-Z
         B(N-I+3) = B(N-I+4) - V+Z
         B(N-I+1) = B(N-I) - V+Z
         B(N-I+2) = B(N-I) - V+Z
         B(N-I+3) = B(N-I) - V+Z
         A(I-1) = V-Z
         A(I-3) = V+Z
         B(I-2) = V+Z
         B(I-3) = V-Z
         B(5) = V+Z
         A(I) = A(I) - 1
         A(I-1) = A(I-1) - 1
         A(I-2) = A(I-2) - 1
         A(I-3) = A(I-3) - 1
         A(I-4) = A(I-4) - 1
         A(I-5) = A(I-5) - 1
         A(N-I+1) = A(N-I+1) - 1
         A(I-1) = A(I) - 1
         A(I) = A(I-1) - 1
         A(N-I+2) = A(N-I+2) - 1
         A(N-I+3) = A(N-I+3) - 1
         A(N-I+4) = A(N-I+4) - 1
         A(N) = A(I) - 1
         A(I) = A(N) - 1
         A(N) = A(I) - 1
         A(I) = A(I) - 1
         A(I-2) = A(N-2) - 1
         A(I-3) = A(N) - 1
         A(N) = V-Z
         A(N-1) = V+Z
         B(N-9) = V-Z
         B(I) = V+Z
         A(1) = V*Z
         A(I) = V*Z
         A(I-2) = V*Z
         A(I+1) = V*Z
         A(I-1) = V*Z
         B(I-1) = V*Z
         B(I-3) = V*Z
         B(2) = V*Z
         B(I+2) = V*Z
         A(N) = V*Z
         A(N-1) = V*Z
         B(N-9) = V*Z
         A(I+2) = V*Z
         A(N-I) = V*Z
         A(N-I) = V*Z
         A(N-I+4) = V-Z
         A(N-I+1) = V*Z
         A(N-I+2) = V*Z
         A(N-I+3) = V*Z
         B(I+2) = V*Z
         B(N-I) = V*Z
         B(N-I) = V*Z
         B(N-I+5) = V-Z
         B(N-I) = B(N-I) + V+Z
         B(N-I+1) = V*Z
         B(N-I+2) = V*Z
         B(N-I+3) = V*Z
         A(1) = A(1) - V+Z
         A(I) = A(I) - V+Z
         A(I-2) = A(I-2) - V+Z
         A(I+1) = A(I+1) - V+Z
         A(I-1) = A(I-1) - V+Z
         B(I-1) = B(I-1) - V+Z
         B(I-3) = B(I-3) - V+Z
         B(2) = B(2) - V+Z
         B(I+2) = B(I+2) - V+Z
         A(N) = A(N) - V+Z
         A(N-1) = A(N-1) - V+Z
         B(N-9) = B(N-9) - V+Z
         A(I+2) = A(I+2) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I) = A(N-1) - V+Z
         A(N-I+4) = A(N-I) - V*Z
         A(N-I) = A(N-I+1) - V*Z
         A(N-I+1) = A(N-I+1) - V+Z
         A(N-I+2) = A(N-I+2) - V+Z
         A(N-I+3) = A(N-I+3) - V+Z
         B(I+2) = B(I+2) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I) = B(N-I) - V+Z
         B(N-I+5) = B(N-I+2) - V-Z
         B(N-I) = B(N-I+3) - V+Z
         B(N-I+1) = B(N-I+4) - V+Z
         B(N-I+2) = B(N-I+5) - V+Z
         B(N-I+3) = B(N-I+1) - V+Z
         A(I-1) = V-Z
         A(I-3) = V+Z
         B(I-2) = V+Z
         B(I-3) = V-Z
         B(5) = V+Z
         A(I) = A(I) - 1
         A(I-1) = A(I-1) - 1
         A(I-2) = A(I-2) - 1
         A(I-3) = A(I-3) - 1
         A(I-4) = A(I-4) - 1
         A(I-5) = A(I-5) - 1
         A(N-I+1) = A(N-I+1) - 1
         A(I-1) = A(I) - 1
         A(I) = A(I-1) - 1
         A(N-I+2) = A(N-I+2) - 1
         A(N-I+3) = A(N-I+3) - 1
         A(N-I+4) = A(N-I+4) - 1
         A(N) = A(I) - 1
         A(I) = A(N) - 1
         A(N) = A(I) - 1
         A(I) = A(I) - 1
         A(I-2) = A(N-2) - 1
         A(I-3) = A(N) - 1
         A(N-1) = V+Z
         B(N-9) = V-Z
         B(I) = V+Z
 10   CONTINUE
      
      CLOSE(20)

      Q = 0.0
      DO 30 I=1, N
         Q = Q + A(I)
 30   CONTINUE

      CLOSE(30)

      DO 40 I=1, N
         Q = Q - B(I)
 40      CONTINUE

      CLOSE(40)

      IF (ABS((Q-ANS)/ANS) .LE. 0.1E-5 ) THEN
         WRITE(6,*) 'OK: Q = ', ANS
      ELSE
         WRITE(6,*) 'NG: Q = ', Q, ', ANS = ', ANS
      END IF

      END
