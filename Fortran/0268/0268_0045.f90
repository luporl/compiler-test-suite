integer::arr(3,3)
integer::arr2(3,3)
integer,target::t1
integer,pointer::ptr
integer,parameter::k=2
integer,parameter::k2=3
integer::num1
integer::num2
integer,target::t2
integer,pointer::ptr2
real::rarr(3,3)
real::rarr2(3,3)
real,target::rt1
real,pointer::rptr
real,pointer::rptr2
real::rnum1
real::rnum2
real,target::rt2
t1=20
t2=30
rt1=200.0
rt2=300.0
data num1,ptr2,arr(2,1:3:k),ptr, arr2(1:k2:k,1),num2 /10,t1,1,2,t1,6,7,12/
data rnum1,rptr2,rarr(3,1:3:1),rptr, rarr2(1:3:2,2),rnum2 /100,rt1,10,20,30,rt1,60,70,120/
if(any(arr.ne.reshape([0,1,0,0,0,0,0,2,0],[3,3])))print*,"101",arr
if(any(arr2.ne.reshape([6,0,7,0,0,0,0,0,0],[3,3])))print*,"101",arr2
if(t1.ne.20)print*,"102"
if(t2.ne.30)print*,"103"
if(num1.ne.10)print*,"104"
if(num2.ne.12)print*,"105"
if(any(rarr.ne.reshape([0,0,10,0,0,20,0,0,30],[3,3])))print*,"101",rarr
if(any(rarr2.ne.reshape([0,0,0,60,0,70,0,0,0],[3,3])))print*,"101",rarr2
if(rt1.ne.200)print*,"102"
if(rt2.ne.300)print*,"103"
if(rnum1.ne.100)print*,"104"
if(rnum2.ne.120)print*,"105"
if(associated(ptr2).neqv..true.)print*,"106"
if(associated(ptr).neqv..true.)print*,"107"
if(associated(rptr2).neqv..true.)print*,"108"
if(associated(rptr).neqv..true.)print*,"109"
print*,"PASS"
print*,"PASS"
End 
