MODULE a_mod
USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR
IMPLICIT NONE
PRIVATE
PUBLIC :: uf
  INTERFACE
    SUBROUTINE uf(object1)
      IMPORT :: C_PTR
      IMPLICIT NONE
      TYPE(C_PTR), VALUE :: object1
    END SUBROUTINE
  END INTERFACE
END MODULE

use a_mod,only:uf
print *,'pass'
end

