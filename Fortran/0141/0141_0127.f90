subroutine s1(n)
common //a
volatile::a
integer::a
!$omp parallel 
!$omp do reduction(+:a)
  do i=1,n
    a=a+1
  end do
!$omp end parallel
end
common //a
integer::a
a=0
n=1000
call s1(n)
if (a/=1000) print *,101
print *,'pass'
end


