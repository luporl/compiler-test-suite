  integer :: act(2)
  call s(act)
  contains
  subroutine s(v)
  integer :: v(:)
  v = 8
  associate(u => v)
  !$omp parallel
  !$omp sections lastprivate(v)
   if(u(1) .ne. 8)print*,"102"
   if(u(2) .ne. 8)print*,"103"
  !$omp end sections
  !$omp end parallel
  print*,"pass"
  end associate
  end subroutine
  end

