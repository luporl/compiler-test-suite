module mod1
type ty
integer::i=1
contains
procedure,pass(d1) :: prc=>fun1  
procedure,pass,private :: prc1=>fun2 
generic :: operator(**) => prc,prc1
end type

type,extends(ty) :: tty
contains
procedure,pass :: prc1=>fun3 
end type

contains
integer function fun()
class(ty),allocatable :: obj1

allocate(ty::obj1)
obj1%i=2

select type(obj1)
type is(ty)
if((obj1**2)==4) then
 fun=(obj1**2)
else
 fun=0
endif
end select
deallocate(obj1)
allocate(tty::obj1)
obj1%i=2

select type(obj1)
type is(tty)
 fun=fun+(obj1**2) 
end select

end function

integer function fun1(dmy,d1)
CLASS(ty),intent(in)::d1
real,intent(in) :: dmy
if(d1%i==2) then
 fun1=int(dmy)
else
 fun1=0
endif
end function

integer function fun2(dmy,dmy2)
class(ty),intent(in)::dmy
integer,intent(in)::dmy2
fun2=dmy%i*dmy2
end function

integer function fun3(dmy,dmy2)
class(tty),intent(in)::dmy
integer,intent(in)::dmy2
if((dmy%i+dmy2)==4) then
 fun3=3
else
 fun3=0
endif
end function
end module

program main 
use mod1
type(tty) :: obj(2,2,2,2,2,2,2)
call s(obj)

contains
subroutine s(dum)
 class(ty)::dum(:,:,:,:,:,:,:)
 dum(1,2,1,2,2,1,2)%i = 2

 associate(tbo=>dum)
 if((1.3**tbo(1,2,1,2,2,1,2))/=1) print*,'101'
 if(fun()==7) print*,'pass'
 end associate
end subroutine
end
