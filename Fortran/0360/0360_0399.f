      integer(4) i4a(31),i4b(31),result_ceil(31),result_floor(31)
      real(4) r4a(31),r4b(31)
      data i4a/31*0/
      data i4b/31*0/
      data r4a/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_ceil/11,-8,7,-4,2,-1,4,6,-7,10,
     +            11,-8,7,-4,2,-1,4,6,-7,10,
     +            11,-8,7,-4,2,-1,4,6,-7,10,
     +            11/
      data r4b/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_floor/10,-9,6,-5,2,-1,3,5,-8,9,
     +            10,-9,6,-5,2,-1,3,5,-8,9,
     +            10,-9,6,-5,2,-1,3,5,-8,9,
     +            10/
      call foo(N)
      do i=1,N
         i4a(i) = ceiling(r4a(i))
         i4b(i) = floor(r4b(i))
      enddo
      do i = 1,N
         if(i4a(i) .ne. result_ceil(i) .or.
     +      i4b(i) .ne. result_floor(i)) goto 10
      enddo
      print *, "OK"
      goto 20
 10   print *, "NG"
      print *, i4a
      print *, i4b
 20   continue
      end

      subroutine foo(N)
      integer N
      N = 31
      end
