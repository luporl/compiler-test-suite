integer::m,n,o
m=1000
n=1000
o=1000
call sub(m,n,o)
end
subroutine sub(m,n,o)
integer::i,j,k,s,m,n,o
s=0
do i=size((/(j,j=o,m,n)/)),1000,1
s=s+i
end do
if ( s == 500500 ) then
  print *,'pass'
else
  print *,'ng'
  print *,s
endif
end subroutine
