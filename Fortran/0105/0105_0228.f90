subroutine sub(a,EnsTim,Poj1,i5,N,K,r)
complex(8):: EnsTim(i5+2,i5+2),A(i5+2,i5+2),Poj1(i5+2,i5+2),r
A(K+1:K+N,K+1:K+N)= A(K+1:K+N,K+1:K+N)-MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))*r&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 -MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 -MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 -MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 -MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 -MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))*r&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))*(-2.0_8)&
 +MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))*r&
 -MATMUL(EnsTim(1:N,1:N),Poj1(1:N,1:N))
end
complex(8):: EnsTim(7,7),A(7,7),Poj1(7,7),r
r=2.0
i5=5
n=5
k=0
EnsTim=reshape((/(i,i=1,49)/),(/7,7/))
A=reshape((/(i,i=11,59)/),(/7,7/))
Poj1=reshape((/(i,i=21,69)/),(/7,7/))
call       sub(a,EnsTim,Poj1,i5,N,K,r)
if (any(abs((/A/)-(/&
-1784,-1898,-2012,-2126,-2240,16,17,-2302,-2451,-2600,-2749,&
-2898,23,24,-2820,-3004,-3188,-3372,-3556,30,31,-3338,-3557,&
-3776,-3995,-4214,37,38,-3856,-4110,-4364,-4618,-4872,44,45,&
46,47,48,49,50,51,52,53,54,55,56,57,58,59&
/))>0.01))print *,'error'

print *,'pass'
end
