      integer m(20),a(20)
      integer m1
      data m,a/40*0/
      a(1) = 10

      do j=1,16
         m1 = m(5)
         if (a(j).gt.m1) then
            m(5) =a(j)
         endif
      enddo
      write(6,*) m(5),m1
      end
