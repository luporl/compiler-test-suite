character(len=4) :: res
res=sub(NULL(),NULL())
print*,res

contains
function sub(d2,dmy)
integer,optional :: d2
integer,optional :: dmy
character(len=4) :: sub
sub='pass'
if(present(dmy)) then
print*,dmy
else
print*,"dmy is absent"
 if(present(d2)) print*,101
endif
endfunction 
end
