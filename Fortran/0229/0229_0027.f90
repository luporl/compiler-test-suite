      module mod01
        type :: type01    
           integer :: x
        end type type01
        type :: type02    
           integer :: x
        end type
      end module mod01
     
      module n02          
        contains           
           subroutine s1(p) 
            use mod01
            type(type01) :: p
          end subroutine s1
           subroutine s2(p) 
            use mod01
            type(type02) :: p
          end subroutine
      end 
    
     module k3                  
     contains
       subroutine sub (proc)  
         use ::n02
         procedure (s1) :: proc
       end subroutine sub
       subroutine subbb (proc)  
         use ::n02
         procedure (s2) :: proc
       end subroutine 
     end
    
     use k3                   
   




       print *,'pass'
     end 
