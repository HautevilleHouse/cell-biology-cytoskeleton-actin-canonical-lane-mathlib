import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytoskeletonActinCanonicalLaneLean.ActinCytoskeletonAdmittedObject

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure TreadmillingPackage where
  coffilinSevering : Type u
  atpHydrolysis : Prop
  adpActinTurnover : Prop
  barbedEndGrowth : Prop
  pointedEndShrinkage : Prop

structure TreadmillingEvidence (T : TreadmillingPackage) where
  coffilinSeveringClosed : T.coffilinSevering
  atpHydrolysisClosed : T.atpHydrolysis
  adpActinTurnoverClosed : T.adpActinTurnover
  barbedEndGrowthClosed : T.barbedEndGrowth
  pointedEndShrinkageClosed : T.pointedEndShrinkage

def TreadmillingClosed (T : TreadmillingPackage) : Prop :=
  T.coffilinSevering ∧ T.atpHydrolysis ∧ T.adpActinTurnover ∧ T.barbedEndGrowth ∧ T.pointedEndShrinkage

theorem treadmilling_closed_from_evidence (T : TreadmillingPackage) (E : TreadmillingEvidence T) : TreadmillingClosed T := by
  exact And.intro E.coffilinSeveringClosed (And.intro E.atpHydrolysisClosed (And.intro E.adpActinTurnoverClosed (And.intro E.barbedEndGrowthClosed E.pointedEndShrinkageClosed)))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse