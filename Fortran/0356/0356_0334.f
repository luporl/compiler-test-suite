      INTEGER  IDA(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      INTEGER  IDA2(16)/16*1/
      INTEGER  res(16)/3,2,3,6,7,6,7,10,11,10,11,14,15,14,15,18/
      call FA239(IDA,IDA2)
      do i=1,16
         if (IDA(i) .ne. res(i)) then
            write(6,*) IDA
            stop
         endif
      enddo
      write(6,*) "ok"
      end
      SUBROUTINE FA239(IDA,IDA2)
      INTEGER  IDA(16)
      INTEGER  IDA2(16)
      IDA = IBSET ( IDA  , IDA2)
      END SUBROUTINE
