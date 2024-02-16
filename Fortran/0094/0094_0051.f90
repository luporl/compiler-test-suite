program pro
implicit none
integer ::n1= 2
integer ::n2= 3
real ::x1= 1.0
real ::x2= 2.0
real :: rslt1,rslt2(2),rslt3,rslt4(2)
rslt1=BESSEL_JN(n1,x2)
rslt2=BESSEL_YN(n1,n2,x1)
rslt3=BESSEL_YN(n1,x2)
rslt4=BESSEL_JN(n1,n2,x1)
if(.not.(rslt1>0.34 .and. rslt1<0.36)) print*,101
if( .not.(rslt2(1)<-1.64 .and. rslt2(1)>-1.66))  print *,102
if( .not.(rslt2(2)<-5.81 .and. rslt2(2)>-5.83))  print *,103
if( .not.(rslt3<-0.60 .and. rslt3>-0.62))  print *,104
if( .not.(rslt4(1)>0.10 .and. rslt4(1)<0.12))  print *,105
if( .not.(rslt4(2)>0.0194 .and. rslt4(2)<0.0196))  print *,106
print*,"pass"
end
