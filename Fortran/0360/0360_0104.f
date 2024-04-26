      double complex a(100), t(1),b(100),res(4)
      data res/(5050.000000000000,50500.00000000000),
     +     (-5050.000000000000,-50500.00000000000),
     +     (5050.000000000000,50500.00000000000),
     + (50.00000000000000,500.0000000000000)/
      do i=1,100
         a(i) = cmplx(i,i*10)
         b(i) = cmplx(i*2,i*5)
      enddo
      t = 0
      call foo_complex(100,a,t,b)
      if (isub(t,res(1)).eq.1) stop 1
      t = 0
      call foo_complex2(100,a,t,b)
      if (isub(t,res(2)).eq.1) stop 2
      t = 0
      call foo_complex3(100,a,t,b)
      if (isub(t,res(3)).eq.1) stop 3
      t = 0
      call foo_complex4(100,a,t,b)
      if (isub(t,res(4)).eq.1) stop 4
      write(6,*) ' ok '
      end

      subroutine foo_complex(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t(1)
      integer i
      do i = 1, n
         t(1) = t(1) + a(i) 
      enddo
      end

      subroutine foo_complex2(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t(1)
      integer i
      do i = 1, n
         t(1) = t(1) - a(i) 
      enddo
      end

      subroutine foo_complex3(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t(1)
      integer i
      do i = 1, n
         t(1) = a(i) + t(1)
      enddo
      end

      subroutine foo_complex4(n,a,t,b)
      implicit none
      integer n
      double complex a(n), b(n),t(1)
      integer i
      do i = 1, n
         t(1) = a(i) - t(1) 
      enddo
      end

      integer function isub(r1,r2)
      double complex r1(1),r2(1)
      isub = 0

      if (r1(1).ne.r2(1)) then
         write(6,*) "calc = ",r1(1)
         write(6,*) "res  = ",r2(1)
         isub = 1
         return
      endif
      return
      end


