import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinPolymerizationCore where
  monomerPool : Prop
  nucleationStep : Prop
  elongationStep : Prop
  treadmillingSteadyState : Prop

def ActinPolymerizationCoreClosed (A : ActinPolymerizationCore) : Prop :=
  A.monomerPool ∧ A.nucleationStep ∧ A.elongationStep ∧ A.treadmillingSteadyState

structure ActinPolymerizationEvidence (A : ActinPolymerizationCore) where
  monomerPoolClosed : A.monomerPool
  nucleationStepClosed : A.nucleationStep
  elongationStepClosed : A.elongationStep
  treadmillingSteadyStateClosed : A.treadmillingSteadyState

theorem actin_polymerization_core_closed_from_evidence (A : ActinPolymerizationCore) (E : ActinPolymerizationEvidence A) : ActinPolymerizationCoreClosed A :=
  And.intro E.monomerPoolClosed (And.intro E.nucleationStepClosed (And.intro E.elongationStepClosed E.treadmillingSteadyStateClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse