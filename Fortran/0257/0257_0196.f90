         interface
          function f(dmy , loc1)
           integer :: f,dmy(5)
           integer*4::loc1
         end function
          subroutine sub(dmy,loc1)
          integer::dmy(5)
          integer*4::loc1
          end subroutine
         end interface
          type ty
          integer,pointer::ptr1(:)
          integer,pointer::ptr2(:)
          end type
          procedure(f),pointer :: dptr 
          procedure(sub),pointer :: dptr2
          integer,target :: ii(5) = [1,2,3,4,5]
          integer,target :: ii2(5) = [1,2,3,4,5]
          integer*4::l
          type(ty)::obj
          obj%ptr1=>ii
          obj%ptr2=>ii2(1:5:1)
          dptr=>f
          dptr2=>sub
          l =loc(ii)
          if(dptr(obj%ptr1(:),l) .ne.1)  print*,"121"
          l= loc(ii2)
          call dptr2(obj%ptr2(:),l)
          call sub2(dptr2)
          print*,"Pass"
          contains
          subroutine sub2(dptr4)
          procedure(sub),pointer :: dptr4
          integer,target::x(5) =[1,2,3,4,5]
          type(ty)::obj
          integer*4::l
          l = loc(x)
          obj%ptr1=>x(:)
           call dptr4(obj%ptr1(:),l)
          end subroutine
         end
         function f(dmy, loc1)
          integer :: f
          integer ::dmy(5)
           integer*4::loc1
          f= dmy(1)
         if(loc(dmy).ne.loc1)print*,"101",loc(dmy),loc1
         if(any(dmy.ne.[1,2,3,4,5]))print*,"102" ,dmy
         end function
         subroutine sub(dmy,loc1)
         integer::dmy(5)
         integer*4::loc1
         if(loc(dmy).ne.loc1)print*,"201", loc(dmy) ,loc1
         if(any(dmy.ne.[1,2,3,4,5]))print*,"202",dmy
         end subroutine
