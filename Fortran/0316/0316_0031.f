      type tag
	integer   i
	integer   j
      end type
      type (tag) ::t(10)
      integer ii(10),jj(10)
      parameter ( t=tag(10,20) )
      data ii /10*10/
      data jj /10*20/
      do n=1,10
       call check(t(n)%i,ii(n))
       call check(t(n)%j,jj(n))
      enddo
      print *,'** OK **'
      end

      subroutine check(i,ii)
      if (i.ne.ii) then
         print *,'?? NG ??'
         stop
      endif
      end
