complex(8)::m1(3,3),m2(3)
complex(8),pointer::r(:),rr(:)
allocate(r(4))
r=(/3,4,5,6/)
rr=>r
m1=reshape((/5,6,7,8,9,10,11,12,13/),(/3,3/))
m2=(/17,18,19/)
r(2:)=matmul(m1,rr(1:3))
if (any(abs(r-(/3,102,114,126/))>0.00001_8))print *,'error-1'
print *,'pass'
end
