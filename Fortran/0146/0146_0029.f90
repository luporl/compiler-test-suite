module mod1
  type base
	integer :: ii=0
	integer :: jj=0
  end type
 
  type,extends(base) :: deriv
	integer :: kk=0
  end type
 
  type new
	class(base),pointer :: cptr(:,:) => NULL()
  end type
 
contains
 function fun(d1,d2,d3)
   type(new),target :: d1
   type(new),target :: d2(:,:)
   type(new),target :: d3(:,:,:)

   class(base),pointer :: cptr(:,:)

   type(base),target :: tgt1(7,8)
   type(deriv),target :: tgt2(10,10)
   type(base),target :: tgt3(5,5)

   if(sizeof(d1%cptr) .NE. 0) print*,"fail 1"
   if(sizeof(d2(1,1)%cptr) .NE. 0) print*,"fail 2"
   if(sizeof(d3(1,2,3)%cptr) .NE. 0) print*,"fail 3"

   d2(1,1) = new(tgt2)

   if(sizeof(d2(1,1)%cptr(2,2)) .NE. 12) print*,"fail 5"
   fun=9
 end function
end module

program main
  use mod1
  type(new) :: cptr_var1
  type(new) :: cptr_var2(5,5)
  type(new) :: cptr_var3(10,10,10)

  if(fun(cptr_var1,cptr_var2,cptr_var3) ==9) print*,'pass'
end
