      program main
      integer(8) a(65),b(65),c(65),res(65)
      integer(4) list(65)
      call init(a,b,c,list,res,65)
      do i=1,2
        call test(a,b,c,list,65)
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,c,list,res,n1)
      integer(8) a(n1),b(n1),c(n1),res(n1)
      integer(4) list(n1)

      do i=1,65
         list(i) = (n1+1) - i
      enddo

      do i=1,65
         a(i) = 0
         b(i) = i
         c(i) = i
         res(i) = i + list(i)
      enddo
      end

      subroutine test(a,b,c,list,n1)
      integer(8) a(n1),b(n1),c(n1)
      integer(4) list(n1)
      
      do i=1,65
         a(list(i)) = b(i) + c(list(i))
      enddo
      
      end
