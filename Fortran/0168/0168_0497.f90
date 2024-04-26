module m0
integer,parameter,dimension(*)::a=[3,3+4,3+8,3+16,3+32,3+64,3+128,3+256,&
  3+512,3+1024,3+2048,3+4096,3+4096*2,3+4096*4,3+4096*8,3+4096*16]
integer,parameter,dimension(*,*,*,*)::b= reshape( a, [2,4,2,1])
logical(8),parameter,dimension(*,*,*,*)::m= reshape( b==b, [2,4,2,1])
contains
subroutine sx01(w,q,n)
integer:: w(:,:,:),q(:)
if (any(shape(w)/=q))print *,1001,shape(w),q,n
if (n==7 .or. n==11 .or. n==18 .or. n==22) then
if (all(w==3) ) print *,1003,w,n
else
if (all(w==3) ) print *,1013,w,n
endif
end subroutine
subroutine sx02(w,n)
integer:: w
if (w/=7 -3.and. w/=131071-3) print *,1002,w,n
end subroutine
end
subroutine s1
use m0
call sx(a)
call sx02( iparity( [3 , 7] ) ,1)
call sx02( iparity( a       ) ,2)
call sx02( iparity( b       ) ,3)
call sx01( iparity( b,dim=1 ),[  4,2,1], 04)
call sx01( iparity( b,dim=2 ),[2,  2,1], 05)
call sx01( iparity( b,dim=3 ),[2,4,  1], 06)
call sx01( iparity( b,dim=4 ),[2,4,2  ], 07)
call sx01( iparity( dim=1,array=b ),[  4,2,1], 08)
call sx01( iparity( dim=2,array=b ),[2,  2,1], 09)
call sx01( iparity( dim=3,array=b ),[2,4,  1], 10)
call sx01( iparity( dim=4,array=b ),[2,4,2  ], 11)
call sx02( iparity( [3 , 7],mask=[.true.,.true.]) ,12)
call sx02( iparity( a      ,mask=a==a ) ,13)
call sx02( iparity( b      ,mask=m ) ,14)
call sx01( iparity( b,dim=1,mask=m ),[  4,2,1], 15)
call sx01( iparity( b,dim=2,mask=m ),[2,  2,1], 16)
call sx01( iparity( b,dim=3,mask=m ),[2,4,  1], 17)
call sx01( iparity( b,dim=4,mask=m ),[2,4,2  ], 18)
call sx01( iparity( dim=1,array=b,mask=m ),[  4,2,1], 19)
call sx01( iparity( dim=2,array=b,mask=m ),[2,  2,1], 20)
call sx01( iparity( dim=3,array=b,mask=m ),[2,4,  1], 21)
call sx01( iparity( dim=4,array=b,mask=m ),[2,4,2  ], 22)
contains
subroutine sx(z)
integer::z(:)
write(1,'(i4,z16.16)') (k,z(k),k=1,size(z))
end subroutine
end
call s1
print *,'pass'
end
