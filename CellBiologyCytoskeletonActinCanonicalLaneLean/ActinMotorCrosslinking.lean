import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinMotorCrosslinkingCore where
  myosinMotorActivity : Prop
  crosslinkerDensity : Prop
  filamentSlidingForce : Prop
  networkContraction : Prop

def ActinMotorCrosslinkingCoreClosed (A : ActinMotorCrosslinkingCore) : Prop :=
  A.myosinMotorActivity ∧ A.crosslinkerDensity ∧ A.filamentSlidingForce ∧ A.networkContraction

structure ActinMotorCrosslinkingEvidence (A : ActinMotorCrosslinkingCore) where
  myosinMotorActivityClosed : A.myosinMotorActivity
  crosslinkerDensityClosed : A.crosslinkerDensity
  filamentSlidingForceClosed : A.filamentSlidingForce
  networkContractionClosed : A.networkContraction

theorem actin_motor_crosslinking_core_closed_from_evidence (A : ActinMotorCrosslinkingCore) (E : ActinMotorCrosslinkingEvidence A) : ActinMotorCrosslinkingCoreClosed A :=
  And.intro E.myosinMotorActivityClosed (And.intro E.crosslinkerDensityClosed (And.intro E.filamentSlidingForceClosed E.networkContractionClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse