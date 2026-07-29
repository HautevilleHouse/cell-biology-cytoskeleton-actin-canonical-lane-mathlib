import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure AdmittedActinObject where
  filamentCount : ℕ
  monomerConcentration : ℝ
  crosslinkingDensity : ℝ

structure AdmissibleClass where
  object : AdmittedActinObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.filamentCount > 0 ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse