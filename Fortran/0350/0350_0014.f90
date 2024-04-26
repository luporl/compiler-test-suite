module type_mod
  type tt1
     sequence
     real(kind=8) :: tr1 = 0._8
  end type tt1
end module type_mod

subroutine f1()
  use type_mod
  type(tt1) :: f1a,f1b
  real(kind=8) :: f2a,f2b
  equivalence(f1a, f2a)
  equivalence(f1b, f2b)

  f1a%tr1 = 1._8
  call f2()
  if ( f2b .ne. 3.0_8 ) then
     print *, "NG"
  endif
contains
  subroutine f2()
!$omp parallel shared(f1a, f2b)
    f2b = f1a%tr1 + 2._8
!$omp endparallel
  end subroutine f2
end subroutine f1

subroutine f3()
  use type_mod
  type(tt1) :: f1a,f1b
  real(kind=8) :: f2a,f2b
  equivalence(f1a, f2a)
  equivalence(f1b, f2b)

  f1a%tr1 = 1._8
  call f2()
  if ( f2b .ne. 3.0_8 ) then
     print *, "NG"
  endif
contains
  subroutine f2()
!$omp task shared(f1a, f2b)
    f2b = f1a%tr1 + 2._8
!$omp endtask

!$omp taskwait

  end subroutine f2
end subroutine f3

program main
  interface
     subroutine f1()
     end subroutine f1
     subroutine f3()
     end subroutine f3
  end interface
  call f1()
  call f3()
  print *, "OK"
end program main
