implicit none
type ty
integer :: ii
end type

type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),allocatable :: obj_parent
allocate(ty2::obj_parent)

block
type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),allocatable :: obj
allocate(ty2::obj)
if(same_type_As(obj,obj_parent).eqv. .false.) then
 print*,'pass'
else
 print*,101
endif
end block
end

