program minlocs
implicit none
integer,parameter::temp(3,2)=reshape([5,8,5,8,4,8],[3,2])
integer,parameter::var1(2)=minloc(temp,mask=reshape([.false.,.false.,.false.,.false.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var2(2)=minloc(temp,mask=reshape([.false.,.false.,.false.,.false.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var3(2)=minloc(temp,mask=reshape([.false.,.false.,.false.,.false.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var4(2)=minloc(temp,mask=reshape([.false.,.false.,.false.,.false.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var5(2)=minloc(temp,mask=reshape([.false.,.false.,.false.,.true.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var6(2)=minloc(temp,mask=reshape([.false.,.false.,.false.,.true.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var7(2)=minloc(temp,mask=reshape([.false.,.false.,.false.,.true.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var8(2)=minloc(temp,mask=reshape([.false.,.false.,.false.,.true.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var9(2)=minloc(temp,mask=reshape([.false.,.false.,.true.,.false.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var10(2)=minloc(temp,mask=reshape([.false.,.false.,.true.,.false.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var11(2)=minloc(temp,mask=reshape([.false.,.false.,.true.,.false.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var12(2)=minloc(temp,mask=reshape([.false.,.false.,.true.,.false.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var13(2)=minloc(temp,mask=reshape([.false.,.false.,.true.,.true.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var14(2)=minloc(temp,mask=reshape([.false.,.false.,.true.,.true.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var15(2)=minloc(temp,mask=reshape([.false.,.false.,.true.,.true.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var16(2)=minloc(temp,mask=reshape([.false.,.false.,.true.,.true.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var17(2)=minloc(temp,mask=reshape([.false.,.true.,.false.,.false.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var18(2)=minloc(temp,mask=reshape([.false.,.true.,.false.,.false.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var19(2)=minloc(temp,mask=reshape([.false.,.true.,.false.,.false.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var20(2)=minloc(temp,mask=reshape([.false.,.true.,.false.,.false.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var21(2)=minloc(temp,mask=reshape([.false.,.true.,.false.,.true.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var22(2)=minloc(temp,mask=reshape([.false.,.true.,.false.,.true.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var23(2)=minloc(temp,mask=reshape([.false.,.true.,.false.,.true.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var24(2)=minloc(temp,mask=reshape([.false.,.true.,.false.,.true.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var25(2)=minloc(temp,mask=reshape([.false.,.true.,.true.,.false.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var26(2)=minloc(temp,mask=reshape([.false.,.true.,.true.,.false.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var27(2)=minloc(temp,mask=reshape([.false.,.true.,.true.,.false.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var28(2)=minloc(temp,mask=reshape([.false.,.true.,.true.,.false.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var29(2)=minloc(temp,mask=reshape([.false.,.true.,.true.,.true.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var30(2)=minloc(temp,mask=reshape([.false.,.true.,.true.,.true.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var31(2)=minloc(temp,mask=reshape([.false.,.true.,.true.,.true.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var32(2)=minloc(temp,mask=reshape([.false.,.true.,.true.,.true.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var33(2)=minloc(temp,mask=reshape([.true.,.false.,.false.,.false.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var34(2)=minloc(temp,mask=reshape([.true.,.false.,.false.,.false.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var35(2)=minloc(temp,mask=reshape([.true.,.false.,.false.,.false.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var36(2)=minloc(temp,mask=reshape([.true.,.false.,.false.,.false.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var37(2)=minloc(temp,mask=reshape([.true.,.false.,.false.,.true.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var38(2)=minloc(temp,mask=reshape([.true.,.false.,.false.,.true.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var39(2)=minloc(temp,mask=reshape([.true.,.false.,.false.,.true.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var40(2)=minloc(temp,mask=reshape([.true.,.false.,.false.,.true.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var41(2)=minloc(temp,mask=reshape([.true.,.false.,.true.,.false.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var42(2)=minloc(temp,mask=reshape([.true.,.false.,.true.,.false.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var43(2)=minloc(temp,mask=reshape([.true.,.false.,.true.,.false.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var44(2)=minloc(temp,mask=reshape([.true.,.false.,.true.,.false.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var45(2)=minloc(temp,mask=reshape([.true.,.false.,.true.,.true.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var46(2)=minloc(temp,mask=reshape([.true.,.false.,.true.,.true.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var47(2)=minloc(temp,mask=reshape([.true.,.false.,.true.,.true.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var48(2)=minloc(temp,mask=reshape([.true.,.false.,.true.,.true.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var49(2)=minloc(temp,mask=reshape([.true.,.true.,.false.,.false.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var50(2)=minloc(temp,mask=reshape([.true.,.true.,.false.,.false.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var51(2)=minloc(temp,mask=reshape([.true.,.true.,.false.,.false.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var52(2)=minloc(temp,mask=reshape([.true.,.true.,.false.,.false.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var53(2)=minloc(temp,mask=reshape([.true.,.true.,.false.,.true.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var54(2)=minloc(temp,mask=reshape([.true.,.true.,.false.,.true.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var55(2)=minloc(temp,mask=reshape([.true.,.true.,.false.,.true.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var56(2)=minloc(temp,mask=reshape([.true.,.true.,.false.,.true.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var57(2)=minloc(temp,mask=reshape([.true.,.true.,.true.,.false.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var58(2)=minloc(temp,mask=reshape([.true.,.true.,.true.,.false.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var59(2)=minloc(temp,mask=reshape([.true.,.true.,.true.,.false.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var60(2)=minloc(temp,mask=reshape([.true.,.true.,.true.,.false.,.true.,.true.],[3,2]),back=.false.)
integer,parameter::var61(2)=minloc(temp,mask=reshape([.true.,.true.,.true.,.true.,.false.,.false.],[3,2]),back=.false.)
integer,parameter::var62(2)=minloc(temp,mask=reshape([.true.,.true.,.true.,.true.,.false.,.true.],[3,2]),back=.false.)
integer,parameter::var63(2)=minloc(temp,mask=reshape([.true.,.true.,.true.,.true.,.true.,.false.],[3,2]),back=.false.)
integer,parameter::var64(2)=minloc(temp,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.],[3,2]),back=.false.)

if(any(var1.ne.[0,0]))print*,"101"
if(any(var2.ne.[3,2]))print*,"102"
if(any(var3.ne.[2,2]))print*,"103"
if(any(var4.ne.[2,2]))print*,"104"
if(any(var5.ne.[1,2]))print*,"105"
if(any(var6.ne.[1,2]))print*,"106"
if(any(var7.ne.[2,2]))print*,"107"
if(any(var8.ne.[2,2]))print*,"108"
if(any(var9.ne.[3,1]))print*,"109"
if(any(var10.ne.[3,1]))print*,"110"
if(any(var11.ne.[2,2]))print*,"111"
if(any(var12.ne.[2,2]))print*,"112"
if(any(var13.ne.[3,1]))print*,"113"
if(any(var14.ne.[3,1]))print*,"114"
if(any(var15.ne.[2,2]))print*,"115"
if(any(var16.ne.[2,2]))print*,"116"
if(any(var17.ne.[2,1]))print*,"117"
if(any(var18.ne.[2,1]))print*,"118"
if(any(var19.ne.[2,2]))print*,"119"
if(any(var20.ne.[2,2]))print*,"120"
if(any(var21.ne.[2,1]))print*,"121"
if(any(var22.ne.[2,1]))print*,"122"
if(any(var23.ne.[2,2]))print*,"123"
if(any(var24.ne.[2,2]))print*,"124"
if(any(var25.ne.[3,1]))print*,"125"
if(any(var26.ne.[3,1]))print*,"126"
if(any(var27.ne.[2,2]))print*,"127"
if(any(var28.ne.[2,2]))print*,"128"
if(any(var29.ne.[3,1]))print*,"129"
if(any(var30.ne.[3,1]))print*,"130"
if(any(var31.ne.[2,2]))print*,"131"
if(any(var32.ne.[2,2]))print*,"132"
if(any(var33.ne.[1,1]))print*,"133"
if(any(var34.ne.[1,1]))print*,"134"
if(any(var35.ne.[2,2]))print*,"135"
if(any(var36.ne.[2,2]))print*,"136"
if(any(var37.ne.[1,1]))print*,"137"
if(any(var38.ne.[1,1]))print*,"138"
if(any(var39.ne.[2,2]))print*,"139"
if(any(var40.ne.[2,2]))print*,"140"
if(any(var41.ne.[1,1]))print*,"141"
if(any(var42.ne.[1,1]))print*,"142"
if(any(var43.ne.[2,2]))print*,"143"
if(any(var44.ne.[2,2]))print*,"144"
if(any(var45.ne.[1,1]))print*,"145"
if(any(var46.ne.[1,1]))print*,"146"
if(any(var47.ne.[2,2]))print*,"147"
if(any(var48.ne.[2,2]))print*,"148"
if(any(var49.ne.[1,1]))print*,"149"
if(any(var50.ne.[1,1]))print*,"150"
if(any(var51.ne.[2,2]))print*,"151"
if(any(var52.ne.[2,2]))print*,"152"
if(any(var53.ne.[1,1]))print*,"153"
if(any(var54.ne.[1,1]))print*,"154"
if(any(var55.ne.[2,2]))print*,"155"
if(any(var56.ne.[2,2]))print*,"156"
if(any(var57.ne.[1,1]))print*,"157"
if(any(var58.ne.[1,1]))print*,"158"
if(any(var59.ne.[2,2]))print*,"159"
if(any(var60.ne.[2,2]))print*,"161"
if(any(var61.ne.[1,1]))print*,"161"
if(any(var62.ne.[1,1]))print*,"162"
if(any(var63.ne.[2,2]))print*,"163"
if(any(var64.ne.[2,2]))print*,"164"
print*,"PASS"
end program minlocs
