type ty
  integer :: ii =12
end type

type ,extends(ty) :: ty1
   integer ::jj = 10
end type

type(ty), target,save:: tarbase  
type(ty1), target,save:: tardrive   

class(ty1),pointer::ptrdrive=>tardrive
class(*),pointer::ptrdrive2
class(*),pointer::ptrdrive3=>tarbase

data ptrdrive2 /tardrive/

if(associated(ptrdrive3).neqv..true.)print*,"101"
if(associated(ptrdrive).neqv..true.)print*,"102"
if(associated(ptrdrive2).neqv..true.)print*,"103"
print*,"PASS"
end
