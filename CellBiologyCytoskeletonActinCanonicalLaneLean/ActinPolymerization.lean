import canonicalLaneMathlib.AdmissibleClass

/-!
# Actin Polymerization Package
-/

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinMonomer where
  atpBound : Prop
  polymerizationCompetent : Prop

def NucleationSite := Type

structure ActinPolymerizationPackage where
  monomer : ActinMonomer
  nucleation : NucleationSite
  elongationRate : Float
  criticalConcentration : Float
  polymerizationCompetence : Prop

structure ActinPolymerizationEvidence (P : ActinPolymerizationPackage) where
  elongationRateClosed : P.elongationRate > 0.0
  criticalConcentrationClosed : P.criticalConcentration > 0.0
  polymerizationCompetenceClosed : P.polymerizationCompetence

def ActinPolymerizationClosed (P : ActinPolymerizationPackage) : Prop :=
  P.elongationRate > 0.0 ∧ P.criticalConcentration > 0.0 ∧ P.polymerizationCompetence

theorem actin_polymerization_closed_from_evidence (P : ActinPolymerizationPackage)
    (E : ActinPolymerizationEvidence P) : ActinPolymerizationClosed P := by
  exact And.intro E.elongationRateClosed (And.intro E.criticalConcentrationClosed E.polymerizationCompetenceClosed)

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse
