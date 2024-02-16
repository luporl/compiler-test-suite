      program main
      parameter(n=100)
      real * 8 a1(n)
      integer * 8  ll(n)
      do i=1,n
       ll(i) = i
       a1(i) = i
       if (mod(i,2) .eq.0) then
         a1(i) = 0
       endif
      enddo
      call sub1(ll,a1,n)
      call sub2(ll,a1,n)
      call sub3(ll,a1,n)
      stop
      end
      subroutine  sub1(ll,a1,n)
      real * 8 a1(n),r4s1
      integer * 8 ll(n),m      

      do i=1,n
       m = ll(i)
       if (m.ge.0) then
         r4s1 = 0
       endif
       do j=1,m
       if (a1(j).gt.0) then
         r4s1 =  a1(j) +1
       endif
       enddo
      enddo
      print *,r4s1
      return
      end
      subroutine  sub2(ll,a1,n)
      real * 8 a1(10),r4s1
      integer * 8 ll(10)

      do i=1,10
       m = ll(i)
       r4s1 = 0
       if (m.ge.0) then
         r4s1 = 0
       endif
       m = ll(i)
       do j=1,m
       if (a1(j).gt.0) then
         r4s1 =  a1(j) +1
       endif
       enddo
      enddo
      print *,r4s1
      return
      end
      subroutine  sub3(ll,a1,n)
      real * 8 a1(n),r4s1
      integer * 8 ll(10)

      do i=1,10
       m = ll(i)
       if (m.ge.0) then
         r4s1 = 0
       endif
       r4s1 = 0
       m = ll(i)
       do j=1,m
       if (a1(j).gt.0) then
         r4s1 =  a1(j) +1
       endif
       enddo
      enddo
      print *,r4s1
      return
      end
