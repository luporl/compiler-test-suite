subroutine s1
save  ::k1,k3,k5
is01(k1,k2,k3)=k1+k2+k3
is02(k4,k5,k6)=is01(k4,k5,k6)
if (is02(1,2,3)/=6) print *,101
n=0
call ss1(n)
contains
recursive subroutine ss1(n) 
k1=n
k2=n
k3=n
k4=n
k5=n
k6=n
n=n+1
if (n<3) call ss1(n)
n=n-1
if (k1/=2) print *,201,k1,n
if (k2/=n) print *,202,k2,n
if (k3/=2) print *,203,k3,n
if (k4/=n) print *,204,k4,n
if (k5/=2) print *,205,k5,n
if (k6/=n) print *,206,k6,n
end subroutine
end
call s1
print *,'pass'
end
