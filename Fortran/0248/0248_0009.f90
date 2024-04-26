PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(*),POINTER:: ptr_base
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj
class(*), pointer ::ptr 

obj%int2=18
allocate(integer:: ptr)

allocate(obj%ptr_base, mold=ptr)

if(ASSOCIATED(obj%ptr_base)) then
  if(same_type_as(obj%ptr_base,ptr) .eqv. .false.) print*,101
else
  print*,'NOT ASSOCIATED YET'
endif

select type(aa=>obj%ptr_base)
 type is(integer)
  print*,'pass'
end select
END PROGRAM
