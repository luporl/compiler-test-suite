type ty
integer :: aa(10,10) = 10
end type ty
type(ty) :: obj
call sub(obj%aa(1:10:2,1:10:2))
if(obj%aa(1,1).ne.20)print*,"101"
contains
subroutine sub(dmy)
integer,contiguous::dmy(:,:)
if(loc(dmy).eq.loc(obj%aa))print*,"105"
if(is_contiguous(dmy) .NEQV. .TRUE.)print*,"102"
dmy(1,1) =20
print*,"PASS"
end subroutine sub
end
