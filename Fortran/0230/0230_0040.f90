      module mod01
        type :: type01
           integer :: x
        end type type01
      end module mod01
     
      module n02
        interface
           function   s1(p)
            use mod01
            type(type01) :: p,s1
          end 
        end interface
      end 
    
     module k3
     contains
       subroutine sub (proc)
         use ::n02
            use mod01
         procedure (s1) :: proc
       end subroutine sub
     end
    
module mm
     use k3
end
use mm
call tt
       print *,'pass'
     end 
subroutine tt
use n02
use k3
         procedure (s1) :: proc
call sub(proc)
end
           function   proc(p)
            use mod01
            type(type01) :: p,proc
p%x=1
proc=p
          end
        

