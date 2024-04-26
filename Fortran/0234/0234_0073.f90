module mm
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
  write(6,*)100
end subroutine
end
module mmm
use mm
type, extends(base)::ext
  contains
   procedure,nopass::cproc1
end type
contains
subroutine cproc1()
  write(6,*)200
end subroutine
end module

module mm2
type base
  contains
   procedure,nopass::prc1
end type
contains
subroutine prc1()
end subroutine
end

module mmm2
use mm2
type, extends(base)::ext
  contains
   procedure,nopass::cproc1
end type
contains
subroutine cproc1()
  write(6,*)400
end subroutine
end module
module xmm
contains
  subroutine xmms(x,y)
    use mmm
    type(base)::x
    type(ext  )::y
   end
end
module xmm2
contains
  subroutine xmms(x,y)
    use mmm2
    type(base)::x
    type(ext  )::y
   end
end
use xmm
use xmm2

use mmm, only:base
use mmm2, only:ext

type(ext)::tc1
call tc1%prc1()
print *,'pass'
end
