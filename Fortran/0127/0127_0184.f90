subroutine sub1()
  type xxx
     real(kind=4),dimension(50) :: a
     real(kind=4),dimension(50) :: d1
  end type xxx
  type (xxx)  :: zzz
  real(kind=4),dimension(50) :: d2

  do k=1,50
     zzz%a(k)=k
     zzz%d1(k)=k
     d2(k)=k
  enddo

  do j=2,50
     zzz%a(j) = zzz%a(j-1) + d2(j)
     zzz%d1(j) = zzz%d1(j) + zzz%a(j)
  enddo

  print*, zzz%a(10)
  print*, zzz%d1(1)
  print*, zzz%d1(2)
  return
end subroutine sub1

subroutine sub1_test()
  type xxx
     real(kind=4),dimension(50) :: a
     real(kind=4),dimension(50) :: d1
  end type xxx
  type (xxx)  :: zzz
  real(kind=4),dimension(50) :: d2

  do k=1,50
     zzz%a(k)=k
     zzz%d1(k)=k
     d2(k)=k
  enddo

  do j=2,50
     zzz%a(j) = zzz%a(j-1) + d2(j)
     zzz%d1(j) = zzz%d1(j) + zzz%a(j)
  enddo

  print*, zzz%a(10)
  print*, zzz%d1(1)
  print*, zzz%d1(2)
  return
end subroutine sub1_test

program main
call sub1()
call sub1_test()
end program
