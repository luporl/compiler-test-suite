      PROGRAM MAIN
      CHARACTER*15 CHR
      CHARACTER*9 CHR1
      CHARACTER*3 CHR2(2)
      CHARACTER*3 CHR3
      WRITE(6,*)'#### START ####'
      CHR1='TEST KA'
      CHR1(8:9)='IN'
      CHR2(1)='047'
      CHR2(2)=CHR3()
      CHR=CHR1//(CHR2(1)//CHR2(2))
      IF(CHR.EQ.'TEST OK') THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      CHARACTER*3 FUNCTION CHR3()
      CHR3=' OK'
      END
