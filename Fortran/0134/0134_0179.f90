module mod0
contains
 subroutine z() 
   interface 
     function x1(i) result(r)
      character(i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: arg,arg2
   character(2)::c
   arg=>x1
   if (arg(2)/='12')print *,1
   c=arg(2)
   if (c/='12')print *,2
   arg2=>x1
   if (arg2(2)/='12')print *,4
   c=arg2(2)
   if (c/='12')print *,5
 end subroutine
end
subroutine s1
use mod0
call z()
end
call s1
print *,'pass'
end
     function x1(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
     end function
