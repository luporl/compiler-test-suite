subroutine s
integer:: a(3),b(3),c(3),d(3)
 c=(/1,2,3/)
 d=(/11,12,13/)
 a=(/1,2,3/)
 b=(/11,12,13/)
 c=(/1,2,3/)
 d=(/11,12,13/)
 k=2
if (a(1)/=1)print *,101,a(1)
if (b(1)/=11)print *,201,b(1)
if (c(k)/=2)print *,302,c(2)
if (d(3)/=13)print *,403,d(3)
if (a(1)/=1)print *,101,a(1)
if (b(1)/=11)print *,201,b(1)
if (c(k)/=2)print *,302,c(2)
if (d(3)/=13)print *,403,d(3)
if (a(1)/=1)print *,101,a(1)
if (b(1)/=11)print *,201,b(1)
if (c(k)/=2)print *,302,c(2)
if (d(3)/=13)print *,403,d(3)
if (a(1)/=1)print *,101,a(1)
if (b(1)/=11)print *,201,b(1)
if (c(k)/=2)print *,302,c(2)
if (d(3)/=13)print *,403,d(3)
end  subroutine
call s
print *,'pass'
end
