      LOGICAL*4 L400A(10)/10*.FALSE./
      LOGICAL*4 L400B(10)/10*.FALSE./
      LOGICAL*4 L400C(10)/10*.FALSE./
      LOGICAL*4 L400D(10)/10*.FALSE./
      LOGICAL*1 L100A(10)/10*.FALSE./
      LOGICAL*1 L100B(10)/10*.FALSE./
      LOGICAL*1 L100C(10)/10*.FALSE./
      LOGICAL*1 L100D(10)/10*.FALSE./
      INTEGER*4 I400A(10)/13,26,5,4,24,0,10,9,11,7/
      INTEGER*4 I400B(10)/2,16,0,0,24,0,14,9,18,4/
      INTEGER*2 I200A(10)/13,26,5,4,24,0,10,9,11,7/
      INTEGER*2 I200B(10)/2,16,0,0,24,0,14,9,18,4/
      DO 10 I=1,10
        L400A(I) = IAND(I400A(I),I400B(I))
        L400B(I) = IOR(I400A(I),I400B(I))
        L400C(I) = IEOR(I400A(I),I400B(I))
        L400D(I) = NOT(I400A(I))
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) L400A
      WRITE(6,*) L400B
      WRITE(6,*) L400C
      WRITE(6,*) L400D
      WRITE(6,*) ' '
C
      DO 20 I=1,10
        L100A(I) = IAND(I400A(I),I400B(I))
        L100B(I) = IOR(I400A(I),I400B(I))
        L100C(I) = IEOR(I400A(I),I400B(I))
        L100D(I) = NOT(I400A(I))
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) L100A
      WRITE(6,*) L100B
      WRITE(6,*) L100C
      WRITE(6,*) L100D
      WRITE(6,*) ' '
C
      DO 30 I=1,10
        L400A(I) = IAND(I200A(I),I200B(I))
        L400B(I) = IOR(I200A(I),I200B(I))
        L400C(I) = IEOR(I200A(I),I200B(I))
        L400D(I) = NOT(I200A(I))
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) L400A
      WRITE(6,*) L400B
      WRITE(6,*) L400C
      WRITE(6,*) L400D
      STOP
      END
