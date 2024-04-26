      call subi4()
      call subi8()
      call subr4()
      call subr8()
      call subc8()
      call subc16()
      end

      subroutine subi4()
      integer*4 a(20)/20*0/,b(20)/1,2,3,4,5,6,7,8,9,10,
     +                         11,12,13,14,15,16,17,18,19,20/,c(20)
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/
      c=b
      do i=1,20
         a(i) = b(list(i)) + 2
      enddo
      write(6,*) a

      do i=1,20
         a(list(i)) = c(i) + 3
      enddo
      write(6,*) a
      end

      subroutine subi8()
      integer*8 a(20)/20*0/,b(20)/1,2,3,4,5,6,7,8,9,10,
     +                         11,12,13,14,15,16,17,18,19,20/,c(20)
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/
      c=b
      do i=1,20
         a(i) = b(list(i)) + 2
      enddo
      write(6,*) a

      do i=1,20
         a(list(i)) = c(i) + 3
      enddo
      write(6,*) a
      end

      subroutine subr4()
      real*4 a(20)/20*0/,b(20)/1,2,3,4,5,6,7,8,9,10,
     +                         11,12,13,14,15,16,17,18,19,20/,c(20)
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/
      c=b
      do i=1,20
         a(i) = b(list(i)) + 2
      enddo
      write(6,*) a

      do i=1,20
         a(list(i)) = c(i) + 3
      enddo
      write(6,*) a
      end

      subroutine subr8()
      real*8 a(20)/20*0/,b(20)/1,2,3,4,5,6,7,8,9,10,
     +                         11,12,13,14,15,16,17,18,19,20/,c(20)
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/

      c=b
      do i=1,20
         a(i) = b(list(i)) + 2
      enddo
      write(6,*) a

      do i=1,20
         a(list(i)) = c(i) + 3
      enddo
      write(6,*) a
      end

      subroutine subc8()
      complex*8 a(20)/20*0/,b(20),c(20)
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/


      do i=1,20
         b(i) = cmplx(i,-i)
         c(i) = b(i)
      enddo

      do i=1,20
         a(i) = b(list(i)) + 2
      enddo
      write(6,*) a

      do i=1,20
         a(list(i)) = c(i) + 3
      enddo
      write(6,*) a
      end

      subroutine subc16()
      complex*16 a(20)/20*0/,b(20),c(20)
      integer*4 list(20)/3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,
     +                   20,19,18,17,16/


      do i=1,20
         b(i) = cmplx(i,-i)
         c(i) = b(i)
      enddo

      do i=1,20
         a(i) = b(list(i)) + 2
      enddo
      write(6,*) a

      do i=1,20
         a(list(i)) = c(i) + 3
      enddo
      write(6,*) a
      end
