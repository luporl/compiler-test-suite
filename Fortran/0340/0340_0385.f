      common //i
      i = 1
      call sub1
      i = 1
      call sub2
      end

      subroutine sub1
      real*4  a(10),b(10),c(10),d(10)/10*0/
      integer list(10)
      common //i

      a = 0
      do j=1,10
         list(j) = j
         b(j) = j
         c(j) = j+2
      enddo

      do i=list(i),10
         a(i) = b(i) + 3

         d(i) = c(i) -2
      enddo

      do i=1,10
         if (a(i).ne.i+3 .or. d(i).ne.i) goto 199
      enddo

      write(6,*) " ## ok 1 ## "
      goto 1100
 199    write(6,*) " ## error 1 ##"
      write(6,*) a
      write(6,*) d
 1100  continue

      return
      end

      subroutine sub2
      real*4  a(10)/10*0/,b(10),c(10),d(10),e(10)
      integer list(10)/1,2,3,4,5,6,7,8,9,10/
      common //i
      e = 0

      do i=list(i),10
         a(i) = i

         b(i) = i

         c(i) = i

         d(i) = i
      enddo

      do i=1,10
         if (a(i).ne.i .or. b(i).ne.i .or.
     +        c(i).ne.i .or. d(i).ne.i) goto 299
      enddo

      write(6,*) " ## ok 2 ## "
      goto 2100
 299  write(6,*) " ## error 2 ##"
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d,e
 2100 continue
      return
      end
