subroutine sub(val1,val2)
real(kind=4) val1,val2
logical(kind=4) t
t = val1 .eq. val2
if (.not. .false.) then
  print *,"ok"
else
  print *,"ng",t
endif
end subroutine

program main
call sub(1._4,2._4)
end program
