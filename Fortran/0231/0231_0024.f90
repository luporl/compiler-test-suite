     module k3   
     contains
       subroutine sub (p)       
         interface
           function   p() 
        type :: y
           integer :: x
        end type 
        type :: type01
           integer :: x
           type(y)::uu
        end type type01
            type(type01) :: p
          end function
         end interface
       end subroutine sub
     end
     use k3 
       print *,'pass'
     end 
