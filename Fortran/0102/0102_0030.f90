integer*1,parameter::a=126_1
integer*1,parameter::b=127_1
integer*1,parameter::c=-127_1
integer*1,parameter::d=-128_1
integer*2,parameter::e=32766_2
integer*2,parameter::f=32767_2
integer*2,parameter::g=-32767_2
integer*2,parameter::h=-32768_2
integer*4,parameter::i=2147483646_4
integer*4,parameter::j=2147483647_4
integer*4,parameter::k=-2147483646_4
integer*4,parameter::l=-2147483647_4
integer*8,parameter::w=9223372036854775806_8
integer*8,parameter::x=9223372036854775807_8
integer*8,parameter::y=-9223372036854775807_8
integer*8,parameter::z=-9223372036854775808_8
logical,parameter::m=bgt(a,b)
logical,parameter::n=bgt(c,d)
logical,parameter::o=bgt(e,f)
logical,parameter::p=bgt(g,h)
logical,parameter::q=bgt(i,j)
logical,parameter::r=bgt(k,l)
logical,parameter::s=bgt(w,x)
logical,parameter::t=bgt(y,z)
logical::m1,n1,o1,p1,q1,r1,s1,t1
m1=bgt(a,b)
n1=bgt(c,d)
o1=bgt(e,f)
p1=bgt(g,h)
q1=bgt(i,j)
r1=bgt(k,l)
s1=bgt(w,x)
t1=bgt(y,z)
if(m .neqv. m1)print*,"100"
if(n .neqv. n1)print*,"101"
if(o .neqv. o1)print*,"102"
if(p .neqv. p1)print*,"103"
if(q .neqv. q1)print*,"104"
if(r .neqv. r1)print*,"105"
if(s .neqv. s1)print*,"106"
if(t .neqv. t1)print*,"107"
print*,"PASS"
end
