subroutine ss(k)
character(k),allocatable::a(:,:,:)
character(k),allocatable::s
namelist /nam/a,s
allocate(character(3)::a(1,1,2),s)
open(1,delim='quote')
a=reshape(['123','456'],[1,1,2])
s='789'
write(1,nam)
end
call ss(3)
call chk
print *,'pass'
end
subroutine chk
character(3) a(2),s
namelist /nam/a,s
rewind 1
read(1,nam) 
if (any(a/=['123','456'])) print *,101
if (   (s/='789')) print *,102
end
