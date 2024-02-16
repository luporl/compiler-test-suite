      implicit none
      integer l
      parameter (l = 10)

      call sub(l)
      stop
      end

      subroutine sub(l)
      real(8),dimension(0:l+2)::a,b,c,d,e,f
      integer::i, h
      h = 0
      a = 0.d0
      b = 0.d0
      c = 1.d0
      d = 2.d0
      e = 1.d0
      f = 3.d0
      do i=1,l
         h = h + 1
         a(i) = a(i+1) + 1.d0
         b(i) = sin(b(i+1)) * 1.d0
         e(h) = c(i) * a(i)
         f(h) = d(i) + b(i)
         if (a(i).lt.10) then
            b(i) = e(h) + 1.d0
         else
            b(i) = f(h) - 1.d0
         endif
      enddo
      write(*,*) abs(b)
      stop
      end
