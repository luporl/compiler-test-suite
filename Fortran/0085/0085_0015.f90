module m1
 type C_P
  integer(8)::addr
 end type
end
MODULE a_mod
use m1
PRIVATE
PUBLIC :: uf
  INTERFACE
    module SUBROUTINE uf(obj)
      TYPE(C_P) :: obj
    END SUBROUTINE
  END INTERFACE
END MODULE

use m1
use a_mod,only:uf
print *,'pass'
end

