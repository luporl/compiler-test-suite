subroutine s3(n1,n4,n5)
integer,dimension(5)::a,b,c
a=1
b=2
n2=2;n3=3
associate( p=>a,w=>c)
 a(n2:n5)=p(:4)+b(:4)
end associate
if (any([a]/=[1,3,3,3,3]))print *,105
end
subroutine s2(n1,n4,n5)
integer,dimension(5)::a,b,c
a=1
b=2
n2=2;n3=3
associate( p=>a,w=>c)
 a(n2:n5)=p(:n4)+b(:n4)
end associate
if (any([a]/=[1,3,3,3,3]))print *,106
end
subroutine s1(n1,n4,n5)
integer,dimension(5,4)::a,b,c
a=1
b=2
n2=2;n3=3
associate( p=>a,w=>c)
 a(n2:n5,n2:n4)=p(:n4,:n3)+b(:n4,:n3)
end associate
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,107
end
n1=1;n4=4;n5=5
call       s1(n1,n4,n5)
call       s2(n1,n4,n5)
call       s3(n1,n4,n5)
print *,'pass'
end
