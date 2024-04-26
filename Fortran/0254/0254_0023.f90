PROGRAM test
  INTEGER,allocatable :: a(:,:)
  allocate(a(2,2))
  a(1,1) = 17
  a(1,2) = 19
  a(2,1) = 18
  a(2,2) = 20
  call sub(a)
  print*,"pass"

  contains
  subroutine sub(a)
  implicit none
  INTEGER :: a(1:,:)
  integer:: b
  b = IALL(a(:,2))
  if(b.ne.16)print*,101
  end subroutine sub
END PROGRAM
