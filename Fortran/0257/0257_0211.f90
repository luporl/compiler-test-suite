type ty
integer,pointer :: ptr(:,:)
end type
type(ty)::obj
integer::x
allocate(obj%ptr(3,3))
obj%ptr = reshape([1,2,3,4,5,6,7,8,9],[3,3])
x= fun(obj%ptr(:,:)) 
if(any(obj%ptr.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"109"
obj%ptr = reshape([1,2,3,4,5,6,7,8,9],[3,3])
x = fun(obj%ptr)
if(any(obj%ptr.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"110"
if(x.ne.10)print*,"101"
print*,"Pass"
contains
function fun(dmy)
  integer:: dmy(3,3)
  integer::fun
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"101"
  if(loc(dmy).ne.loc(obj%ptr))print*,"103"
  if(rank(dmy).ne.2)print*,"104"
  dmy = dmy +10
  fun =10
end function
end

