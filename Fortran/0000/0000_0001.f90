      integer*1 a1, a2
      real*16   b1, b2
      logical   ok

      ok = .true.

      a1 = 1
      b1 = 1.1
      a2 = b1
      b2 = a1

      if ((a2-b2) .ne. 0) then
        ok = .false.
        print *,"TEST1-NG =>",a2-b2
      endif

      a1 = -1
      b1 = -1.1
      a2 = b1
      b2 = a1

      if ((a2-b2) .ne. 0) then
        ok = .false.
        print *,"TEST2-NG =>",a2-b2
      endif

      if (ok) then
        print *,"OK"
      endif

      end
