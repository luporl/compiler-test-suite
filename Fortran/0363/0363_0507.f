      program main
      complex(4) a,b(65),res(65)
      call init(a,b,res,65)
      do i=1,2
        call test(a,b,65)
      enddo

      if(a .ne. res(1)) goto 10

      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) a,res(1)

 20   continue
      end
 
      subroutine init(a,b,res,n1)
      complex(4)  a,b(n1),res(n1)

      do i=1,65
         a = 0.0
         b(i) = cmplx(i,10-i)
      enddo
      res(1) = cmplx(n1,10-n1)
      end

      subroutine test(a,b,n1)
      complex(4) a,b(n1)
      
      do i=1,65
        a = b(i)
      enddo
      
      end








