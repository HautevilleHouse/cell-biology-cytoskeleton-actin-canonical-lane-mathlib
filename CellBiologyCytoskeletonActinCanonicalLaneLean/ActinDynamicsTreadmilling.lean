import canonicalLaneMathlib.AdmissibleClass

/-!
# Actin Dynamics: Treadmilling Package
-/

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure TreadmillingPackage where
  barbedEndGrowthRate : Float
  pointedEndShrinkRate : Float
  steadyStateFlux : Float
  atpHydrolysisRate : Float
  treadmillingCompetence : Prop

structure TreadmillingEvidence (P : TreadmillingPackage) where
  barbedEndGrowthRateClosed : P.barbedEndGrowthRate > 0.0
  pointedEndShrinkRateClosed : P.pointedEndShrinkRate > 0.0
  steadyStateFluxClosed : P.steadyStateFlux > 0.0
  atpHydrolysisRateClosed : P.atpHydrolysisRate > 0.0
  treadmillingCompetenceClosed : P.treadmillingCompetence

def TreadmillingClosed (P : TreadmillingPackage) : Prop :=
  P.barbedEndGrowthRate > 0.0 ∧ P.pointedEndShrinkRate > 0.0 ∧ P.steadyStateFlux > 0.0 ∧ P.atpHydrolysisRate > 0.0 ∧ P.treadmillingCompetence

theorem treadmilling_closed_from_evidence (P : TreadmillingPackage) (E : TreadmillingEvidence P) :
    TreadmillingClosed P := by
  exact And.intro E.barbedEndGrowthRateClosed (And.intro E.pointedEndShrinkRateClosed
    (And.intro E.steadyStateFluxClosed (And.intro E.atpHydrolysisRateClosed E.treadmillingCompetenceClosed)))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse
