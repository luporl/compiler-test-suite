subroutine s1(n)
integer :: a1(n),a2(10,10),a3(10,10),a4(n+100+100)
a1=1
a2=reshape([(k,k=1,100)],[10,10])
a3=reshape([(k,k=1,100)],[10,10])
a4=[ a1 ,a1 , a1 ,a2 , a3  ]
if (any(a4/=[ reshape([(k,k=1,100)],[10,10]) , reshape([(k,k=1,100)],[10,10])])) print *,101
if (any([ a1 , a2 , a3  ]/=[ reshape([(k,k=1,100)],[10,10]) , reshape([(k,k=1,100)],[10,10])])) print *,102
if (size( [ a1 , a2 , a3  ] ) /= 100+100) print *,103
if (any( ubound( [ a1 , a2 , a3  ] ) /= 100+100)) print *,104
call foo( [ a1 , a2 , a3  ] )
contains
subroutine foo( x )
integer :: x(:)
if (any(x/=[ reshape([(k,k=1,100)],[10,10]) , reshape([(k,k=1,100)],[10,10])])) print *,1011
end subroutine
end
do k=1,30
call s1(0)
end do
print *,'pass'
end

