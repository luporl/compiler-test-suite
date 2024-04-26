      program main
      integer*8 a(65),b(65),res(65)
      call init(a,b,res,65)
      do i=1,2
        call test(a,b,65)
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) a
      write(6,*) res

 20   continue
      end

      subroutine init(a,b,res,n1)
      integer*8  a(n1),b(n1),res(n1)

      do i=1,65
         a(i) = 0
         b(i) = i
         res(i) = ishft(b(i),2)
      enddo
      end

      subroutine test(a,b,n1)
      integer*8 a(n1),b(n1)
      
      do i=1,65
        a(i) = ishft(b(i),2)
      enddo
      
      end
