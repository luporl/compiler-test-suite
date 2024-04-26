subroutine s1
integer(8),parameter:: a1(3,4)= reshape([(k,k=1,24)],[3,4])
integer(8),parameter:: a2(4,3)= reshape([(k,k=1,24)],[4,3])
integer(8),parameter:: a3(3)= reshape([(k,k=1,24)],[3])
integer(8),parameter:: a4(4)= reshape([(k,k=1,24)],[4])

integer(8),parameter:: x1(3,3)=matmul(a1,a2)
integer(8),parameter:: x2(3)=matmul(a4,a2)
integer(8),parameter:: x3(4)=matmul(a3,a1)
integer(8)          :: y1(3,3),y2(3),y3(4)
y1=matmul(a1,a2)
y2=matmul(a4,a2)
y3=matmul(a3,a1)
if (any((x1-y1)>0.00001))print *,101
if (any((x2-y2)>0.00001))print *,102
if (any((x3-y3)>0.00001))print *,103
end
call s1
print *,'pass'
end
