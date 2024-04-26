program main
complex*16, parameter::b(4) = (/(2.0_8 , 8.5_8) ,(8.5_8 , 2.0_8), (13.0_8, 12.89_8), (12.89_8, 12.0_8)/)
integer, parameter::c = 5
integer, parameter::e = 2
integer::m(2)
complex*16::d(4,5) = spread(b, e , c)
complex*16::f(4,5)
integer, parameter::g(2) = shape(spread(b, e , c))
integer::p = kind(spread( b, e, c))
integer::j,k
f = spread(b, e, c)
m = shape(spread(b,e,c))
print*, d, '---', f
do j=1,4
do k=1,5
if (d(j,k).ne.f(j,k)) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
enddo
enddo
call check(g,m)
call check1(p, kind(spread(b,e,c)))
end

subroutine check(x, y)
integer x(2), y(2)
integer::m = 1
print*, x,'--',y
do m=1,2
if (x(m).ne.y(m)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
enddo
end subroutine

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
