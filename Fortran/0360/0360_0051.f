      real a(16)/16*0/,b(16)/16*2/
      real c(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      integer x(16)/16*0/,y(16)/16*2/
      integer z(16)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      do i=1,16
         a(i) = b(i) + c(i)
         x(i) = y(i) + z(i)
      enddo
      write(6,*) a
      write(6,*) x
      end
