type ty
integer,pointer :: ptr(:,:)
integer,pointer :: ptr2(:)
end type
type(ty)::obj
integer,target::t1(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
obj%ptr => t1(1:3:1,1:3:1)
call sub(obj%ptr(:,:)) 
if(any(t1.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"101"
t1 = reshape([1,2,3,4,5,6,7,8,9],[3,3])
call sub(obj%ptr) 
if(any(t1.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"102"
 print*,"Pass"
contains
subroutine sub(dmy)
integer:: dmy(3,3)
  if(any(dmy.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"106"
  if(loc(dmy).ne.loc(obj%ptr))print*,"101"
  dmy = dmy + 10
end subroutine
end

