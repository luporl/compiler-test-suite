implicit none
type ty
integer :: ii=1
end type

type,extends(ty) :: ty2
integer :: ii2=2
end type

class(ty),pointer :: obj_parent,obj
type(ty2),target :: tgt1
obj_parent=>tgt1

block
type,extends(ty) :: ty2
integer :: ii2=3
end type

type(ty2),target :: tgt1
obj=>tgt1
if(extends_type_of(obj,obj_parent).eqv. .false.) then
 print*,'pass'
else
 print*,101
endif

block
type,extends(ty) :: ty2
integer :: ii2=4
end type

class(ty),pointer :: obj2

type(ty2),target :: tgt1
obj2=>tgt1
if(extends_type_of(obj2,obj_parent).eqv. .false.) then
 print*,'pass'
else
 print*,101
endif
end block
end block
end

