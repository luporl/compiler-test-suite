integer*1,parameter::a=8
integer*2,parameter::b=8
integer*4,parameter::c=8
integer*8,parameter::d=8
integer*1,parameter::e=1
integer*2,parameter::j=2
integer*4,parameter::k=4
integer*8,parameter::l=8
integer*4,parameter::f=maskl(a,e)
integer*4,parameter::g=maskl(b,j)
integer*4,parameter::h=maskl(c,k)
integer*8,parameter::i=maskl(d,l)
if(f.ne.-1)print*,"100"
if(g.ne.-256)print*,"101"
if(h.ne.-16777216_4)print*,"102"
if(i.ne.-72057594037927936_8)print*,"103"
print*,"PASS"
end

