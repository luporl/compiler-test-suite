subroutine s1
real(8)::r81(3),r82(3,4),r83(4,3)
real(8)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
r8=cx
r8=r8-2.0*matmul(r81,r82)
if (any(abs((/r8/)-(/&
-1487.,-1703.,-1919.,-2135.&
/))>10.))print *,101
r8=cx
r8=r8-2.0*matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/&
-1715.,-1787.,-1859.,-1931.&
/))>10.))print *,201
end
subroutine s11
real(8)::r81(3),r82(3,4),r83(4,3)
real(8)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
r8=cx
r8=r8-2*matmul(r81,r82)
if (any(abs((/r8/)-(/&
-1487.,-1703.,-1919.,-2135.&
/))>10.))print *,101
r8=cx
r8=r8-2*matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/&
-1715.,-1787.,-1859.,-1931.&
/))>10.))print *,201
end
subroutine s12
real(8)::r81(3),r82(3,4),r83(4,3)
real(8)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
k=2
r8=cx
r8=r8-k*matmul(r81,r82)
if (any(abs((/r8/)-(/&
-1487.,-1703.,-1919.,-2135.&
/))>10.))print *,101
r8=cx
r8=r8-k*matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/&
-1715.,-1787.,-1859.,-1931.&
/))>10.))print *,101
end
subroutine s2
real(4)::r81(3),r82(3,4),r83(4,3)
real(4)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
r8=cx
r8=r8-2.0*matmul(r81,r82)
if (any(abs((/r8/)-(/&
-1487.,-1703.,-1919.,-2135.&
/))>10.))print *,101
r8=cx
r8=r8-2.*matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/&
-1715.,-1787.,-1859.,-1931.&
/))>10.))print *,101
end
subroutine s21
real(4)::r81(3),r82(3,4),r83(4,3)
real(4)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
r8=cx
r8=r8-2.0*matmul(r81,r82)
if (any(abs((/r8/)-(/&
-1487.,-1703.,-1919.,-2135.&
/))>10.))print *,101
r8=cx
r8=r8-2.*matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/&
-1715.,-1787.,-1859.,-1931.&
/))>10.))print *,101
end
subroutine s22
real(4)::r81(3),r82(3,4),r83(4,3)
real(4)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
k=2
r8=cx
r8=r8-k*matmul(r81,r82)
if (any(abs((/r8/)-(/&
-1487.,-1703.,-1919.,-2135.&
/))>10.))print *,101
r8=cx
r8=r8-k*matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/&
-1715.,-1787.,-1859.,-1931.&
/))>10.))print *,101
end
call s1
call s11
call s12
call s2
call s21
call s22
print *,'pass'
end
