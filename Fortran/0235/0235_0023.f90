module mm
type base
  contains
   procedure,nopass::prc1
end type

type, extends(base)::child
  contains
   procedure,nopass::prc1=>cproc1
end type

contains
integer function prc1()
  prc1=100
end function
integer function cproc1()
  cproc1=200
end function
end module

module mm2
type base
  contains
   procedure,nopass::prc1
end type

type, extends(base)::child
  contains
   procedure,nopass::prc1=>cproc1
end type
private
public::child
contains
integer function prc1()
  prc1=300
end function
integer function cproc1()
  cproc1=400
end function
end module

use mm, only:base
use mm2,c=>child

type(c)::tc1
if(tc1%prc1()/=400)print*,102
print *,'pass'
end
