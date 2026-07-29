import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinAdmittedObject where
  filament : Type u
  polymerizationCapacity : Prop
  bindingProteinPresent : Prop
  motilityEnabled : Prop
  conclusion : polymerizationCapacity ∧ bindingProteinPresent → motilityEnabled

structure AdmissibleClass where
  object : ActinAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.polymerizationCapacity ∧ A.object.bindingProteinPresent → A.object.motilityEnabled) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse