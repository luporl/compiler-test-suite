subroutine sub(A,K,HiTim,Poj3,AA)
complex(8):: A(K,K),HiTim(K,K),Poj3(K,K),AA(K,K)
A(1:K,1:K)= A(1:K,1:K)+MATMUL(hiTim(1:K,1:K),Poj3(1:K,1:K))+AA(1:K,1:K)
end
complex(8):: A(15,5),HiTim(15,5),Poj3(15,5),AA(15,5)
a=reshape((/(i,i=1,125)/),(/15,5/))
aa=reshape((/(i,i=1,125)/),(/15,5/))
HiTim=reshape((/(i,i=11,135)/),(/15,5/))
Poj3=reshape((/(i,i=21,145)/),(/15,5/))
call sub(A,5,HiTim,Poj3,AA)
if (any(abs((/A/)-(/&
2467,2584,2701,2818,2935,3002,3144,3286,3428,3570,3537,3704,3871,&
4038,4205,4072,4264,4456,4648,4840,4607,4824,5041,5258,5475,26,27,&
28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,&
55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75&
/))>0.00001))print *,'error'
print *,'pass'
end
