      complex*8 a(16)/16*0/,b(16)/16*2/
      complex*8 c(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      do i=1,16
         a(i) = b(i) + c(i)
      enddo
      write(6,*) a
      end
