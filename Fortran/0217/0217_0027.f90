module m1
  type ty
    integer :: i=4
  end type
  type(ty) :: t
end
module m333
  interface
    module subroutine sub(a)
use m1,only:t,ty
      integer :: a(t%i)
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
use m1,only:t,ty
if (size(a)/=4) print *,201
if (t%i    /=4) print *,201
end
end
use m333,only:sub
      integer :: a(4)
call sub(a)
print *,'pass'
end
