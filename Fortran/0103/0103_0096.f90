integer*1,parameter::a=8
integer*2,parameter::b=8
integer*4,parameter::c=8
integer*8,parameter::d=8
integer*1,parameter::e=1
integer*2,parameter::j=2
integer*4,parameter::k=4
integer*8,parameter::l=8
integer,parameter::f=maskr(a,e)
integer,parameter::g=maskr(b,j)
integer,parameter::h=maskr(c,k)
integer*8,parameter::i=maskr(d,l)
if(f.ne.-1)print*,"100"
if(g.ne.255)print*,"101"
if(h.ne.255)print*,"102"
if(i.ne.255)print*,"103"
print*,"PASS"
end

