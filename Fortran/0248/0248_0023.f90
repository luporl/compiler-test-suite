PROGRAM MAIN
IMPLICIT NONE
integer :: err
REAL :: src(10)=0.0
CLASS(*), POINTER:: ptr(:)
src(1)=10.0000
allocate(ptr,MOLD=src,STAT = err)
if( err .EQ. 0 ) then 
    select type(ptr)
    type is(integer)
     print*,102
    type is(real)
     if(size(ptr)/=10) print*,105
     print *, 'pass'
    class default
     print*,103
    endselect
else
    print *, 101
endif 

END PROGRAM MAIN
