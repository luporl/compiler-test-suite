	subroutine sub_1(m,a)
	parameter(nn=64*4)
	integer*1 m(nn)
	integer*1 a(nn)
	do i=1,nn
	if (m(i) .ne. 5) then
	a(i) = ior(a(i), 2)
	endif
	end do
	end
!
	subroutine sub_2(m,a,rc)
	parameter(nn=64*4)
	integer*1 m(nn)
	integer*1 a(nn),rc
	do i=1,nn
	if (m(i) .ne. 5) then
	a(i) = ior(a(i), rc)
	endif
	end do
	end
!
        subroutine init(m,a)
	parameter(nn=64*4)
	integer*1 m(nn)
	integer*1 a(nn)
	do i=1,nn
	  a(i) = i-1
	  m(i) = i-1
	end do
        end
!
	parameter(nn=64*4)
	integer*1 m(nn)
	integer*1 a(nn),tmp
	call init(m,a)
	call sub_1(m,a)
	do i=1,nn
          if (m(i) .ne. 5) then
            tmp = i-1
            if( a(i).ne. ior(tmp,2_1) ) then
              print *,a(i)
              stop  "NG-1-1"
            endif
          else
            if( a(i).ne. 5 ) then
              print *,a(i)
              stop  "NG-1-2"
            endif
          endif
	end do
	call init(m,a)
	call sub_2(m,a,2_1)
	do i=1,nn
          if (m(i) .ne. 5) then
            tmp = i-1
            if( a(i).ne. ior(tmp,2_1) ) then
              print *,a(i)
              stop  "NG-2-1"
            endif
          else
            if( a(i).ne. 5 ) then
              print *,a(i)
              stop  "NG-2-2"
            endif
          endif
	end do
        print *,'PASS'
	end
	
