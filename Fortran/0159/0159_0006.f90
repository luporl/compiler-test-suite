interface inta
integer function intb(i)
integer :: i
end function
end interface
type inta
 real    ::  i
end type
if (inta(1).ne.10) print *,'err'
print *,'pass'
end
integer function intb(i)
intb=i*10
end function
