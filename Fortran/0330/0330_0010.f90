integer::m,n
m=1000
n=m
call sub(m,n)
end
subroutine sub(m,n)
integer::i,s,m,n,o
s=0
o=m
do i=size((/(j,j=1,m)/)),size((/(j,j=1,n)/))
s=s+i
end do
do i=size((/(j,j=o,m,n)/)),1000,1
s=s+i
end do
if ( s == 501500 ) then
  print *,'pass'
else
  print *,'ng'
  print *,s
endif
end subroutine
