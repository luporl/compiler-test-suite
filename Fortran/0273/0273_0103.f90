LOGICAL::L2=1.5_2 == 1.5_2
LOGICAL::L3=1.5_2 == -1.5_2
LOGICAL::L4=-5.96046448E-08_2 == -5.96046448E-08_2
LOGICAL::L5=5.96046448E-08_2 == 5.96046448E-08_2
LOGICAL::L6=65504.0_2 == 65504.0_2
LOGICAL::L7=-65504.0_2 == -65504.0_2
LOGICAL::L8=-65504.0_2 == 65504.0_2


LOGICAL::LG2=1.5_2 > 1.5_2
LOGICAL::LG3=1.5_2 > -1.5_2
LOGICAL::LG4=-5.96046448E-08_2  >-5.96046448E-08_2
LOGICAL::LG5=5.96046448E-08_2 > 5.96046448E-08_2
LOGICAL::LG6=65504.0_2 > 65504.0_2
LOGICAL::LG7=-65504.0_2 > -65504.0_2
LOGICAL::LG8=65504.0_2 > -65504.0_2


LOGICAL::LL2=1.5_2 < 1.5_2
LOGICAL::LL3=-1.5_2 < 1.5_2
LOGICAL::LL4=-5.96046448E-08_2 < -5.96046448E-08_2
LOGICAL::LL5=5.96046448E-08_2 < 5.96046448E-08_2
LOGICAL::LL6=65504.0_2 < 65504.0_2
LOGICAL::LL7=-65504.0_2 < -65504.0_2
LOGICAL::LL8=-65504.0_2 < 65504.0_2

IF( (L2 .NEQV. .TRUE.) .AND. (L3 .NEQV. .FALSE.) .AND. (L4 .NEQV. .TRUE.) .AND. (L5 .NEQV. .TRUE.)  &
     .AND. (L6 .NEQV. .TRUE.) .AND. (L7 .NEQV. .TRUE.) .AND. (L8 .NEQV. .FALSE.) )PRINT*,'101'

IF( (LG2 .NEQV. .FALSE.) .AND. (LG3 .NEQV. .TRUE.) .AND. (LG4 .NEQV. .FALSE.) .AND. (LG5 .NEQV. .FALSE.)  &
     .AND. (LG6 .NEQV. .FALSE.) .AND. (LG7 .NEQV. .FALSE.) .AND. (LG8 .NEQV. .FALSE.) )PRINT*,'102'

IF( (LL2 .NEQV. .FALSE.) .AND. (LL3 .NEQV. .TRUE.) .AND. (LL4 .NEQV. .FALSE.) .AND. (LL5 .NEQV. .FALSE.)  &
     .AND. (LL6 .NEQV. .FALSE.) .AND. (LL7 .NEQV. .FALSE.) .AND. (LL8 .NEQV. .TRUE.) )PRINT*,'103'

PRINT*,"PASS"

END
