MODULE m
integer::f1=0,f2=0,f3=0
integer::f11=0,f12=0,f13=0
TYPE t1
REAL a,b
integer::z1
CONTAINS
FINAL :: t1f,t1a
END TYPE
TYPE,EXTENDS(t1) :: t2
integer::z2
TYPE(t1) :: y2(2)
CONTAINS
FINAL :: t2f
END TYPE
TYPE,EXTENDS(t2) :: t3
integer::z3
CONTAINS
FINAL :: t3f
END TYPE
CONTAINS
SUBROUTINE t1a(x) 
TYPE(t1) :: x(:)
f11=f11+1
END SUBROUTINE
SUBROUTINE t1f(x) 
TYPE(t1) :: x
f1=f1+1
END SUBROUTINE
SUBROUTINE t2f(x) 
TYPE(t2) :: x
f2=f2+1
END SUBROUTINE
SUBROUTINE t3f(x) 
TYPE(t3) :: x
f3=f3+1
END SUBROUTINE
END MODULE
SUBROUTINE example
USE m
class(t1),allocatable:: x1(:)
class(t2),allocatable:: x2
class(t3),allocatable:: x3

allocate (t1:: x1(2))
deallocate(x1)

allocate (t2:: x1(2))
deallocate(x1)

allocate (t3:: x1(2))
deallocate(x1)

END SUBROUTINE
use m
call example
if (f11/=5) print *,100,f11
if (f1/=4) print *,101,f1
if (f2/=2) print *,102,f2
if (f3/=0) print *,103,f3

print *,'pass'
end

