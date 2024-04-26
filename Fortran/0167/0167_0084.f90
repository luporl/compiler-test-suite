module m1
  integer :: a(100),b(100),c(100)
  equivalence (a,b,c)
  private c
contains
  subroutine check
    if (any(c /= 30)) print *,11
    if (any(b /= 30)) print *,22
  end subroutine
end

module m2
  use m1,y=>b
end

module m3
  use m1,yy=>b
  private a
end

use m2
use m3
a=30
call check
if (any(a /= 30)) print *,33
if (any(y /= 30)) print *,33
if (any(yy /= 30)) print *,33
print *,'pass'
end
