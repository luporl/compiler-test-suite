subroutine sub(K,N,NYY,L,M,Poj1,POP,VR,A)
complex(8):: Poj1(K,15),POP(K,15),VR(K+N),A(N)
Poj1(NYY*(L-1)+M,1:K)=-MATMUL(VR(K+1:K+N),transpose(POP(1:K,1:N)))
end
complex(8):: Poj1(5,15),POP(5,15),VR(20),A(15)
Poj1=reshape((/(i,i=1,125)/),(/5,15/))
POP=reshape((/(i,i=11,135)/),(/5,15/))
VR=reshape((/(i,i=21,40)/),(/20/))
A=reshape((/(i,i=21,35)/),(/15/))
K=5
N=15
NYY=2
L=3
M=-1
call sub(K,N,NYY,L,M,Poj1,POP,VR,A)
if (any(abs((/Poj1/)-(/&
1,2,-24170,4,5,6,7,-24665,9,10,11,12,-25160,14,15,16,17,-25655,19,&
20,21,22,-26150,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,&
41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,&
63,64,65,66,67,68,69,70,71,72,73,74,75&
/))>0.01))print *,'error'
print *,'pass'
end

