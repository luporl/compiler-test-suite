       LOGICAL  L1(10),L2(10),LRC1,LRC2
       DATA     L1/5*.TRUE.,5*.FALSE./,LRC1/.TRUE./
       DATA     L2/5*.FALSE.,5*.TRUE./,LRC2/.TRUE./
       INTEGER  A(10),B(10)
       DATA     A/10*5/,B/10*10/
       DO 10 J = 1 , 10
       DO 10 I = 1 , 10
         A(I) = I
         IF(LRC1) THEN
           IF(L1(I)) THEN
             A(I) = I**2
           ENDIF
         ENDIF
         B(I) = -I
         IF(L1(I)) THEN
           IF(LRC2) THEN
             IF(L2(I)) THEN
               B(I) = -I**2
             ENDIF
           ENDIF
         ENDIF
   10 CONTINUE
      PRINT *,A,B
      END
