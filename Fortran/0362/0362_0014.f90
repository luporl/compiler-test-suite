character(len= 1,kind=4),parameter::cc1=4_'A'
character(len= 1,kind=4),parameter::cc2=4_'B'
character(len=10,kind=4),parameter::cc3=4_'XYZ  '
character(len=10,kind=4),parameter::cc4=4_'XYZ  '
integer,parameter::ii1=     iachar  (cc1)
integer,parameter::ii2=     ichar   (cc2)
integer,parameter::ii3=     len     (cc3)
integer,parameter::ii4=     len_trim(cc4)
integer,parameter::kk1=kind(iachar  (cc1))
integer,parameter::kk2=kind(ichar   (cc2))
integer,parameter::kk3=kind(len     (cc3))
integer,parameter::kk4=kind(len_trim(cc4))
if ( ii1 == 65             .and. kk1 == 4 .and. &
     ii2 == 66             .and. kk2 == 4 .and. &
     ii3 == 10             .and. kk3 == 4 .and. &
     ii4 ==  3             .and. kk4 == 4 .and. &
     len     (cc3) == 10 .and. kind(len     (cc3)) == 4 .and. &
     len_trim(cc4) ==  3 .and. kind(len_trim(cc4)) == 4 ) then
  print *,'pass'
else
  print *,'ng'
  print *,ii1,ii2,ii3,ii4
  print *,kk1,kk2,kk3,kk4
  print *,iachar  (cc1),ichar   (cc2),len     (cc3),len_trim(cc4)
  print *,kind(iachar  (cc1)),kind(ichar   (cc2)),kind(len     (cc3)),kind(len_trim(cc4))
endif
end
