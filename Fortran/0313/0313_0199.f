      real*4 a(20)/-1, 2, 3,10*0,4*-0.0,-1,2,3/
      real*4 b(20)/-1,-2,-3,10*0,4*-0.0,1,2,3/
      b(10) = -b(10)
      do i=1,20
         a(i) = abs(b(i))
      enddo
      write(6,*) b(10)
      write(6,*) a
      end
