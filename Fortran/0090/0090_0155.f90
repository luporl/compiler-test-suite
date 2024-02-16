program main

  common /com/v,u
  real(kind=8),dimension(1:10) :: v,u
  real(kind=8),parameter :: ans1=8.300000000000001_8,ans2=6.100000000000001_8
  real(kind=8),parameter :: ans3=6.500000000000000_8,ans4=2.249285714285715_8
  real(kind=8),parameter :: error=0.00000000000001_8
  logical(kind=1) ok

  call init
  v(2:10) = v(1:9) + u(1:9)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) + u(1:9:1)

  if ( abs(ans1 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) - u(1:9)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) - u(1:9:1)

  if ( abs(ans2 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) * u(1:9)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) * u(1:9:1)

  if ( abs(ans3 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) / ( u(1:9) + 1.0_8 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) / ( u(1:9:1) + 1.0_8 )

  if ( abs(ans4 - sum(v)) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

 100  continue


  if (ok) then
    print *,"OK"
  else
    print *,"NG : ",sum(v)
  endif

end program main

subroutine init()

  common /com/v,u
  real(kind=8),dimension(1:10) :: v,u

  v = (/1.0_8,0.0_8,1.0_8,-1.0_8,1.2_8,1.4_8,0.0_8,2.2_8,0.4_8,-1.2_8/)
  u = (/0.4_8,0.2_8,0.0_8,-4.0_8,2.2_8,1.5_8,0.0_8,-2.2_8,3.0_8,-2.0_8/)

end subroutine
