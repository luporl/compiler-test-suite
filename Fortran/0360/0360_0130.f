
      integer*4 i4a(16),i4b(16),i4c(16)/8*2.0,8*-2.0/
      integer*8 i8a(16),i8b(16),i8c(16)/8*2.0,8*-2.0/
      real*4 r4a(16),r4b(16),r4c(16)/8*2.0,8*-2.0/
      real*8 r8a(16),r8b(16),r8c(16)/8*2.0,8*-2.0/
      integer  res(16)/0,0,1,0,0,4,5,0,
     + 0,12,0,0,15,16,0,0/
      data i4b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/
      data i8b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/
      data r4b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/
      data r8b/1,-2,3,-4,-5,6,7,-8,-9,10,
     +       -11,-12,13,14,-15,-16/

      do i=1,16
         i4a(i) = dim(i4b(i),i4c(i))
      enddo
      write(1,*)
      do i=1,16
         i8a(i) = dim(i8b(i),i8c(i))
      enddo
      write(1,*)
      do i=1,16
         r4a(i) = dim(r4b(i),r4c(i))
      enddo
      write(1,*)
      do i=1,16
         r8a(i) = dim(r8b(i),r8c(i))
      enddo
      write(1,*)

      do i=1,16
         if (i4a(i).ne.res(i) .or.
     +       i8a(i).ne.res(i) .or.
     +       r4a(i).ne.res(i) .or.
     +       r8a(i).ne.res(i)) goto 10
      enddo
      write(6,*) " ## ok ## "
      goto 20
 10   write(6,*) " ## ng ## "
      write(6,*) i4a
      write(6,*) i8a
      write(6,*) r4a
      write(6,*) r8a
 20   continue
      end


