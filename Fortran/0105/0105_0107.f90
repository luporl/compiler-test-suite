subroutine sub(A,K,HiTim,Poj3,AA)
complex(8):: A(K,K),HiTim(K,K),Poj3(K,K),AA(K,K)
A(1:K,1:K)= A(1:K,1:K)-MATMUL(hiTim(1:K,1:K),Poj3(1:K,1:K))+AA(1:K,1:K)
end
complex(8):: A(15,5),HiTim(15,5),Poj3(15,5),AA(15,5)
a=reshape((/(i,i=1,125)/),(/15,5/))
aa=reshape((/(i,i=1,125)/),(/15,5/))
HiTim=reshape((/(i,i=11,135)/),(/15,5/))
Poj3=reshape((/(i,i=21,145)/),(/15,5/))
call sub(A,5,HiTim,Poj3,AA)
if (any(abs((/A/)-(/&
-2463,-2576,-2689,-2802,-2915,-2978,-3116,-3254,-3392,-3530,-3493,&
-3656,-3819,-3982,-4145,-4008,-4196,-4384,-4572,-4760,-4523,-4736,&
-4949,-5162,-5375,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,&
42,43,44,45,46,47,48,49,50,51,52,53,54,55,&
56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75&
/))>0.00001))print *,'error'
print *,'pass'
end
