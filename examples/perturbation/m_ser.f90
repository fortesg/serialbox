MODULE m_ser

  IMPLICIT NONE

  CONTAINS

  SUBROUTINE serialize(a)
    IMPLICIT NONE
    REAL(KIND=8), DIMENSION(:,:,:) :: a

    !$ser init directory='.' prefix='SerialboxTest'
    !$ser savepoint sp1
    !$ser mode write
    !$ser data ser_a=a

  END SUBROUTINE serialize

  SUBROUTINE deserialize(a)
    IMPLICIT NONE
    REAL(KIND=8), DIMENSION(:,:,:) :: a

    !$ser init directory='.' prefix='SerialboxTest-output' prefix_ref='SerialboxTest'
    !$ser savepoint sp1
    !$ser mode read
    !$ser data ser_a=a
    !$ser mode write
    !$ser data ser_a=a

  END SUBROUTINE deserialize

  SUBROUTINE deserialize_with_perturb(a)
    IMPLICIT NONE
    REAL(KIND=8), DIMENSION(:,:,:) :: a

    !$ser init directory='.' prefix='SerialboxTest-output' prefix_ref='SerialboxTest'
    !$ser savepoint sp1
    !$ser mode read-perturb
    !$ser data ser_a=a

  END SUBROUTINE deserialize_with_perturb

END MODULE m_ser
