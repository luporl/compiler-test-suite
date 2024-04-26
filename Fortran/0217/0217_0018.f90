module m1
  type ty
    integer :: i=2
  end type
end
module m11
 use m1
  type(ty) :: x
end
module mod
  use m11,tt=>ty
  type ty
    integer :: i=3
  end type
  type(ty) :: y

  interface
    module subroutine sub(a,b,aa,bb)
      integer :: a(3:x%i),b(3:y%i)
      integer :: aa(3:x%i),bb(3:y%i)
    end subroutine
  end interface
end

submodule (mod) smod
contains
module procedure sub
if (size(a)/=2) print *,101,size(a)
if (size(aa)/=2) print *,111,size(aa)
if (size(b)/=3) print *,102,size(b)
if (size(bb)/=3) print *,112,size(bb)
if (ubound(a,1)/=4) print *,101,ubound(a)
if (ubound(aa,1)/=4) print *,111,ubound(aa)
if (ubound(b,1)/=5) print *,102,ubound(b)
if (ubound(bb,1)/=5) print *,112,ubound(bb)
end
end
use mod
      integer :: a(2),aa(2)
      integer :: b(3),bb(3)
x%i=4
y%i=5
call sub(a,b,aa,bb)
print *,'pass'
end
