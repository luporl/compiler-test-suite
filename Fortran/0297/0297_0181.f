      program main
      parameter(n=20)
      double precision a(n),b(n),c(n),d(n)
      do i=1,n
        a(i) = i
        b(i) = 0
        c(i) = 2
        d(i) = 3
      enddo
      call s121(a,b,c,d,n,n)
      write(6,99) a
      write(6,99) b
 99   format(5f15.5)
      stop
      end
      subroutine s121(a,b,c,d,n,m)
      double precision a(n),b(n),c(n),d(n)
      do j=1,m
      do i=1,n-1
         A(I) = A(I) + C(I)               
         B(I) = B(I) + A(I+1) * D(I)      
      enddo
      enddo
      return
      end
