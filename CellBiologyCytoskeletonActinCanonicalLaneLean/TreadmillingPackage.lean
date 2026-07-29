import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure TreadmillingPackage (F : ActinFilament) where
  plusEndGrowth : Prop
  minusEndShrinkage : Prop
  turnoverRate : ℝ
  atpHydrolysisCoupled : Prop

structure TreadmillingEvidence (F : ActinFilament) (T : TreadmillingPackage F) where
  plusEndGrowthClosed : T.plusEndGrowth
  minusEndShrinkageClosed : T.minusEndShrinkage
  turnoverRatePositive : T.turnoverRate > 0
  atpHydrolysisCoupledClosed : T.atpHydrolysisCoupled

def TreadmillingClosed (F : ActinFilament) (T : TreadmillingPackage F) : Prop :=
  T.plusEndGrowth ∧ T.minusEndShrinkage ∧ T.turnoverRate > 0 ∧ T.atpHydrolysisCoupled

theorem treadmilling_closed_from_evidence (F : ActinFilament) (T : TreadmillingPackage F)
    (E : TreadmillingEvidence F T) : TreadmillingClosed F T := by
  exact And.intro E.plusEndGrowthClosed
    (And.intro E.minusEndShrinkageClosed
      (And.intro E.turnoverRatePositive E.atpHydrolysisCoupledClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse