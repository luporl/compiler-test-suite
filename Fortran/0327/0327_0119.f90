integer,dimension(4)::a
a=(/1,2,3,4/)
call sub(a,a)
write(1,*) a
print *,'pass'
contains

subroutine sub(a,b)
integer,dimension(4)::a,b,c,r
c=(/-10,-20,-30,-40/)
r=-100
where ((/.true.,.false.,.false.,.true./))
a=c
r=b
end where
write(1,*) r
end subroutine
end
