      integer(8) i8a(31),result_nint(31)
      real(8) r8a(31),r8b(31),r8c(31),result_anint(31)
      data i8a/31*0/
      data r8a/31*0.0/
      data r8b/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_anint/10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0,-8.0,7.0,-4.0,2.0,-1.0,3.0,6.0,-8.0,10.0,
     +            10.0/
      data r8c/10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2,-8.1,6.9,-4.2,2.0,-1.0,3.3,5.5,-7.7,9.9,
     +         10.2/
      data result_nint/10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10,-8,7,-4,2,-1,3,6,-8,10,
     +            10/

      call foo(N)
      do i = 1,N
         r8a(i) = anint(r8b(i))
         i8a(i) = nint(r8c(i))
      enddo
      do i = 1,N
         if(r8a(i) .ne. result_anint(i) .or.
     +      i8a(i) .ne. result_nint(i)) goto 10
      enddo
      print *, "OK"
      goto 20
 10   print *, "NG"
      print *, r8a
      print *, i8a
 20   continue
      end

      subroutine foo(N)
      integer N
      N = 31
      end
