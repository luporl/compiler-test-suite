use, intrinsic :: ieee_arithmetic
real(4)::r4=1.0
real(8)::r8=1.0
real(16)::r16=1.0
if (.not.ieee_support_nan()) then
  print *, 'ng0'
endif
if (.not.ieee_support_nan(r4)) then
  print *, 'ng1'
endif
if(.not.ieee_support_nan([1.0])) print *,'ng2'
if(.not.ieee_support_nan(r8)) print *,'ng3'
if(.not.ieee_support_nan(r16)) print *,'ng4'
if(.not.ieee_support_nan([1.0d0])) print *,'ng5'
if(.not.ieee_support_nan([1.0q0])) print *,'ng6'
if(.not.ieee_support_nan([real::])) print *,'ng7'
print *,'pass'
end
