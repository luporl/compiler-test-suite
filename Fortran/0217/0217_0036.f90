module mod
  type y0
    integer :: i=3
  end type
  type,extends(y0)::y1
    integer :: k=100
    integer :: k2=100
  end type
  type,extends(y1)::y2
    integer :: k11=100
    integer :: k12=100
  end type
  type,extends(y2)::ty
    integer :: kk=100
    integer :: kk2=100
  end type
  type(ty) :: y
  type(ty) :: yy
  type(y2) :: z

  interface
    module subroutine sub(bb)
      integer :: bb(y%y2%y1%i)
    end subroutine
    module subroutine sub1(bb)
      integer :: bb(yy%y2%y1%i)
    end subroutine
    module subroutine sub2(bb)
      integer :: bb(z%y1%i)
    end subroutine
  end interface
end

submodule (mod) smod
contains
module procedure sub
if (size(bb)/=3) print *,101
end
end

use mod
      integer :: bb(10)
call sub(bb)
print *,'pass'
end
