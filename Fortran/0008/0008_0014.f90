subroutine s1
integer:: i(10,3:3)= reshape([(k,k=1,10)],[10,1])
integer:: v(10)=[1,2,3,4,5,6,7,8,9,10]

n=10
forall (k=3:3) i(v(k:n),k) = i(:8,k)+1 
if (any(i(:,3)/=[1,2,2,3,4,5,6,7,8,9])) print *,101,i
end
call s1
print *,'OK'
end
