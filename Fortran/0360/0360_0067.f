      real b(17)/17*2/,r4/2/
      real c(17)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17/
      do i=1,16
         r4 = r4 + b(i) * c(i)
      enddo
      write(6,*) r4
      end
