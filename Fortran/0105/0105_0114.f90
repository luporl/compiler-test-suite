subroutine sub(K,N,NYY,L,M,Poj1,POP,VR,A)
complex(8):: Poj1(K,15),POP(K,15),VR(K),A(N)
Poj1(NYY*(L-1)+M,1:N)=-MATMUL(VR(1:K),POP(1:K,1:N))
end
complex(8):: Poj1(5,15),POP(5,15),VR(5),A(15)
Poj1=reshape((/(i,i=1,125)/),(/5,15/))
POP=reshape((/(i,i=11,135)/),(/5,15/))
VR=reshape((/(i,i=21,25)/),(/5/))
A=reshape((/(i,i=21,35)/),(/15/))
K=5
N=15
NYY=2
L=3
M=-1
call sub(K,N,NYY,L,M,Poj1,POP,VR,A)
if (any(abs((/Poj1/)-(/&
1,2,-1505,4,5,6,7,-2080,9,10,11,12,-2655,14,15,16,17,-3230,19,20,&
21,22,-3805,24,25,26,27,-4380,29,30,31,32,-4955,34,35,36,37,-5530,&
39,40,41,42,-6105,44,45,46,47,-6680,49,50,51,52,-7255,54,55,56,57,&
-7830,59,60,61,62,-8405,64,65,66,67,-8980,69,70,71,72,-9555,74,75&
/))>0.01))print *,'error'
print *,'pass'
end

