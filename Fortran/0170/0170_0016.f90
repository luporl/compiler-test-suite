subroutine s1(n)
complex :: a1(n),a2(10,10),a3(10,10),a4(100+100)
a1=1
a2=cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10]))
a3=cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10]))
a4=[complex(8):: a1, a1, a1 ,a1 , a2 , a3  ]
if (any(a4/=[ &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])), &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])) &
 ] )) print *,101
if (any([ complex(8):: a1, a1, a1 , a2 , a3  ]/=[ &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])), &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])) &
 ] )) print *,102
if (size( [ complex(8):: a1, a1, a1 , a2 , a3  ] ) /= 100+100) print *,103
if (any( ubound( [ complex(8):: a1, a1, a1 , a2 , a3  ] ) /= 100+100)) print *,104
call foo( [ complex(8):: a1, a1, a1 , a2 , a3  ] )
contains
subroutine foo( x )
complex(8) :: x(:)
if (any(x/=[  &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])), &
  cmplx(reshape([(k,k=1,100)],[10,10]), reshape([(k,k=1,100)],[10,10])) &
 ] )) print *,105
end subroutine
end
do k=1,30
call s1(0)
end do
print *,'pass'
end

