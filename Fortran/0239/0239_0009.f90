  subroutine g(xy,n)
interface
subroutine gs(x)
end subroutine
end interface
  real,intent(out) :: xy
  xy  = 0
  do i=1,n
    xy  = xy + 1     
  enddo
associate(z=>xy)
  call gs(z )
end associate
  xy  = xy +3
  if (abs(xy-10)>0.00001)print *,101
  end

xy=1
call g(xy,5)
print *,'pass'
end

subroutine gs(x)
x=x+2
end subroutine


