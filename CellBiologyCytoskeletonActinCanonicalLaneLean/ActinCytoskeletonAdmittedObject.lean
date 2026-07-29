import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinFilament where
  monomerSubunits : Type u
  polymerizationRate : Prop
  criticalConcentration : Prop
  nucleationBarrier : Prop

structure ActinCytoskeletonAdmittedObject where
  filament : ActinFilament
  branchingPresent : Prop
  crosslinkingPresent : Prop
  severingPresent : Prop
  treadmillingRate : Prop
  conclusion : polymerizationRate ∧ nucleationBarrier ∧ branchingPresent ∧ crosslinkingPresent ∧ severingPresent

def ActinCytoskeletonWitnessClosed (O : ActinCytoskeletonAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse