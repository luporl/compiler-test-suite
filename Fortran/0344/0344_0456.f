      LOGICAL*4 L400A(10)/10*.FALSE./
      LOGICAL*4 L400B(10)/10*.FALSE./
      LOGICAL*4 L400C(10)/10*.FALSE./
      LOGICAL*4 L400D(10)/10*.FALSE./
      LOGICAL*4 L400E(10)/10*.FALSE./
      LOGICAL*4 L4A/.TRUE./,L4B/.FALSE./
      INTEGER*4 I400A(10)/13,26,5,4,24,7,10,9,11,7/
      INTEGER*4 I400B(10)/2,16,0,0,24,0,14,9,18,4/
      INTEGER*4 I400C(10)/-2,16,0,0,24,10,14,9,18,4/
      INTEGER*4 XX/2/
      DO 10 I=1,10,2
        L400A(I) = I400A(5)
        L400B(I) = IAND(I400A(I),I400B(I))+I400C(I)
        L400C(5) = L400A(I).AND.L400B(I)
        L400D(I) = 20
        L4B      = (MOD(I400A(I),XX)).GT.XX
        L400E(I) = IEOR(((I400A(I)+I)*2/2-1),(IOR(I400B(I),I)))
        L400E(I) = L4B.OR.L4A
   10 CONTINUE
      WRITE(6,*) L400A
      WRITE(6,*) L400B
      WRITE(6,*) L400C
      WRITE(6,*) L400D
      WRITE(6,*) L400E
      STOP
      END
