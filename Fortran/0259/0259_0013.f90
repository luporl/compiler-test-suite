type ty
 character(len=5) ::a(2)='datan'
end type

type(ty),target,save :: obj(2)
character(len=2),pointer :: ptr/obj(1)%a(1)(1:2)/
if(ptr .ne. 'da')print*,"101"
if(associated(ptr) .eqv. .false.)print*,"102"
print*,"pass"
end
