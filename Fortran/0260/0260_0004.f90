program main
        implicit none
        integer :: a 
        
        a=variable_declaration()

        contains
        
        function variable_declaration() 
        implicit none
        integer,parameter :: val =8
        integer,parameter :: a=16, b=8
        integer :: variable_declaration

        complex(8) a0;

        type(complex(8))                :: a1
        type(complex(8))                :: a2(3)
        type(complex(8))                :: a3(2,2)
        type(complex*16)                :: a6
        type(complex(kind = val))       :: a7
        type(complex(kind=(12-4)))      :: a8
        type(complex(kind=(a-b)))       :: a9
        type(complex(12-4))             :: a10
        type(complex(a-8))              :: a11
        type(complex(16-b))             :: a12
        type(complex(2*4))              :: a13
        type(complex(((16)-(2*4))))     :: a14

        if(kind(a0) /= kind(a1)) print*,100
        if(kind(a0) /= kind(a2)) print*,101
        if(kind(a0) /= kind(a3)) print*,102

        if(kind(a0) /= kind(a6)) print*,104
        if(kind(a0) /= kind(a7)) print*,105
        if(kind(a0) /= kind(a8)) print*,106
        if(kind(a0) /= kind(a9)) print*,107
        if(kind(a0) /= kind(a10)) print*,108
        if(kind(a0) /= kind(a11)) print*,109
        if(kind(a0) /= kind(a12)) print*,110
        if(kind(a0) /= kind(a13)) print*,111
        if(kind(a0) /= kind(a13)) print*,112
        variable_declaration = 11 


        print*,"pass"
        end function variable_declaration

end program main



