module bank
integer,pointer    :: ncnt(:)
!$OMP THREADPRIVATE(ncnt)
end module bank
use bank
allocate(ncnt(3))
write(1,*) (/1,2,3/)
write(1,*) (/1,2,3/)
rewind 1
read (1,*) ( ncnt(i), i=1,3 )
call chk
read(1,*)  ncnt(1:3)
call chk
print *,'pass'
end
subroutine chk
use bank,x=>ncnt
if (any(x/=(/1,2,3/)))print *,101
end

