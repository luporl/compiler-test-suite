        module a_1
                      type :: ty
                        integer::x1
                      end type ty
        end 
        module a_2
                      type :: tya
                        integer::x1
                      end type tya
        end 
        module bb_1
                contains
                   subroutine foo(var)
                    use a_1
                     type(ty) :: var
                   end subroutine foo
        end 
        module bb_2
                contains
                   subroutine foo(var)
                    use a_2
                     type(tya) :: var2
                   end subroutine foo
        end 
       module ccc_1
                use a_1
                use bb_1
       end 
       module ccc_2
                use a_2
                use bb_2
       end 
       module ccc
 use ccc_1
 use ccc_2
                private
           public :: ty
           public :: tya
       end 

                use ccc
                  type (ty) :: var
                  type (tya) :: vara
       print *,'pass'
       end
