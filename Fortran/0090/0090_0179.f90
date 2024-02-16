module mod
  common /com1/v,w,t,s
  complex(kind=8),dimension(1:10) :: v,w,t,s
  common /com2/p,q
  complex(kind=8),dimension(1:10) :: p,q
end module

program main
  use mod

  if (test1()) then
    if (test2()) then
      print *,"ALL-OK"
    else
      print *,"TEST2-NG"
    endif
  else
    print *,"TEST1-NG"
  endif

  contains
!
! [TEST1]
!
  logical(kind=1) function test1()

    real(kind=8),parameter :: ans1=78.30000000000000_8
    real(kind=8),parameter :: ans2=-10.70000000000000_8
    real(kind=8),parameter :: ans3=9.586000000000006_8
    real(kind=8),parameter :: ans4=6.375892052031303_8
    real(kind=8),parameter :: error= 0.0000000000001_8
    real(kind=8) res
    logical(kind=1) ok

    call init
    p(1:10) = v(1:10) + w(1:10)
    q(1:10) = p(1:10) + s(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) + w(1:10:1)
    q(1:10:1) = p(1:10:1) + s(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) + w(:)
    q(:) = p(:) + s(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) + w(1:)
    q(1:) = p(1:) + s(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) + w(:10)
    q(:10) = p(:10) + s(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10) = v(1:10) - w(1:10)
    q(1:10) = p(1:10) - s(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) - w(1:10:1)
    q(1:10:1) = p(1:10:1) - s(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) - w(:)
    q(:) = p(:) - s(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) - w(1:)
    q(1:) = p(1:) - s(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) - w(:10)
    q(:10) = p(:10) - s(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10) = v(1:10) * w(1:10)
    q(1:10) = p(1:10) * s(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) * w(1:10:1)
    q(1:10:1) = p(1:10:1) * s(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) * w(:)
    q(:) = p(:) * s(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) * w(1:)
    q(1:) = p(1:) * s(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) * w(:10)
    q(:10) = p(:10) * s(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10) = v(1:10) / w(1:10)
    q(1:10) = p(1:10) / s(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) / w(1:10:1)
    q(1:10:1) = p(1:10:1) / s(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) / w(:)
    q(:) = p(:) / s(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) / w(1:)
    q(1:) = p(1:) / s(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) / w(:10)
    q(:10) = p(:10) / s(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

 100    continue

  if (.not. ok) then
    print *,"TEST1 => NG=",res
  endif

  test1 = ok

  end function

!
! [TEST2]
!
  logical(kind=1) function test2()

    real(kind=8),parameter :: ans1=78.30000000000000_8
    real(kind=8),parameter :: ans2=-10.70000000000000_8
    real(kind=8),parameter :: ans3=9.586000000000006_8
    real(kind=8),parameter :: ans4=6.375892052031303_8
    real(kind=8),parameter :: error= 0.0000000000001_8
    real(kind=8) res
    logical(kind=1) ok

    call init2
    p(1:10) = p(1:10) + q(1:10)
    q(1:10) = p(1:10) + v(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) + q(1:10:1)
    q(1:10:1) = p(1:10:1) + v(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) + q(:)
    q(:) = p(:) + v(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) + q(1:)
    q(1:) = p(1:) + v(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) + q(:10)
    q(:10) = p(:10) + v(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10) = p(1:10) - q(1:10)
    q(1:10) = p(1:10) - v(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) - q(1:10:1)
    q(1:10:1) = p(1:10:1) - v(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) - q(:)
    q(:) = p(:) - v(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) - q(1:)
    q(1:) = p(1:) - v(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) - q(:10)
    q(:10) = p(:10) - v(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10) = p(1:10) * q(1:10)
    q(1:10) = p(1:10) * v(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) * q(1:10:1)
    q(1:10:1) = p(1:10:1) * v(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) * q(:)
    q(:) = p(:) * v(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) * q(1:)
    q(1:) = p(1:) * v(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) * q(:10)
    q(:10) = p(:10) * v(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10) = p(1:10) / q(1:10)
    q(1:10) = p(1:10) / v(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) / q(1:10:1)
    q(1:10:1) = p(1:10:1) / v(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) / q(:)
    q(:) = p(:) / v(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) / q(1:)
    q(1:) = p(1:) / v(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) / q(:10)
    q(:10) = p(:10) / v(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

 200    continue

  if (.not. ok) then
    print *,"TEST2 => NG=",res
  endif

  test2 = ok

  end function

  subroutine init()

    v = (/(1.2_8,0.8_8),(1.0_8,-1.0_8),(2.0_8,1.0_8),(2.3_8,2.0_8),(1.3_8,-0.7_8),(-1.1_8,1.0_8),(1.4_8,-1.0_8),(0.4_8,2.0_8),(1.0_8,1.3_8),(1.0_8,1.0_8)/)
    w = (/(1.0_8,1.8_8),(-1.0_8,-1.0_8),(2.0_8,1.0_8),(2.2_8,2.0_8),(1.4_8,-0.7_8),(-1.1_8,-1.2_8),(1.4_8,-1.0_8),(0.4_8,2.4_8),(1.2_8,2.0_8),(1.9_8,1.8_8)/)
    t = (/(0.9_8,1.0_8),(1.0_8,-1.3_8),(1.0_8,1.2_8),(1.0_8,-1.0_8),(-2.2_8,-1.0_8),(-1.0_8,2.0_8),(1.2_8,-2.0_8),(1.8_8,-2.0_8),(3.0_8,2.0_8),(1.2_8,1.0_8)/)
    s = (/(1.0_8,1.9_8),(2.0_8,-1.4_8),(1.0_8,1.9_8),(1.4_8,1.4_8),(2.8_8,-1.9_8),(-1.2_8,2.6_8),(1.3_8,-1.4_8),(-1.8_8,-1.8_8),(1.3_8,2.0_8),(-1.4_8,1.8_8)/)

  end subroutine

  subroutine init2()

    p = (/(1.2_8,0.8_8),(1.0_8,-1.0_8),(2.0_8,1.0_8),(2.3_8,2.0_8),(1.3_8,-0.7_8),(-1.1_8,1.0_8),(1.4_8,-1.0_8),(0.4_8,2.0_8),(1.0_8,1.3_8),(1.0_8,1.0_8)/)
    q = (/(1.0_8,1.8_8),(-1.0_8,-1.0_8),(2.0_8,1.0_8),(2.2_8,2.0_8),(1.4_8,-0.7_8),(-1.1_8,-1.2_8),(1.4_8,-1.0_8),(0.4_8,2.4_8),(1.2_8,2.0_8),(1.9_8,1.8_8)/)
    v = (/(1.0_8,1.9_8),(2.0_8,-1.4_8),(1.0_8,1.9_8),(1.4_8,1.4_8),(2.8_8,-1.9_8),(-1.2_8,2.6_8),(1.3_8,-1.4_8),(-1.8_8,-1.8_8),(1.3_8,2.0_8),(-1.4_8,1.8_8)/)

  end subroutine

end program main

