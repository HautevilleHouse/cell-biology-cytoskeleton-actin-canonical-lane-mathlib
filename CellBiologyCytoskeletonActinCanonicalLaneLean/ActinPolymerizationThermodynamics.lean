import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinPolymerizationThermodynamicsPackage where
  polymerizationEnergy : ℝ
  depolymerizationEnergy : ℝ
  criticalConcentration : ℝ
  entropyChange : ℝ
  enthalpyChange : ℝ
  monomerConcentration : ℝ

structure ActinPolymerizationThermodynamicsEvidence
    (T : ActinPolymerizationThermodynamicsPackage) where
  polymerizationEnergyClosed : T.polymerizationEnergy = -5.2
  depolymerizationEnergyClosed : T.depolymerizationEnergy = 3.8
  criticalConcentrationClosed : T.criticalConcentration = 0.1
  entropyChangeClosed : T.entropyChange > 0
  enthalpyChangeClosed : T.enthalpyChange < 0
  monomerConcentrationClosed : T.monomerConcentration > T.criticalConcentration

def ActinPolymerizationThermodynamicsClosed
    (T : ActinPolymerizationThermodynamicsPackage) : Prop :=
  T.polymerizationEnergy = -5.2 ∧ T.depolymerizationEnergy = 3.8 ∧
  T.criticalConcentration = 0.1 ∧ T.entropyChange > 0 ∧ T.enthalpyChange < 0 ∧
  T.monomerConcentration > T.criticalConcentration

theorem actin_polymerization_thermodynamics_closed_from_evidence
    (T : ActinPolymerizationThermodynamicsPackage)
    (E : ActinPolymerizationThermodynamicsEvidence T) :
    ActinPolymerizationThermodynamicsClosed T := by
  exact And.intro E.polymerizationEnergyClosed
    (And.intro E.depolymerizationEnergyClosed
      (And.intro E.criticalConcentrationClosed
        (And.intro E.entropyChangeClosed
          (And.intro E.enthalpyChangeClosed E.monomerConcentrationClosed))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse