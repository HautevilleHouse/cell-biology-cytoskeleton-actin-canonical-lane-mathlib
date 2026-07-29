import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinCortexContractilityPackage where
  myosinIIConcentration : ℝ
  actinFilamentDensity : ℝ
  crosslinkerDensity : ℝ
  corticalTension : ℝ
  contractionRate : ℝ
  cellShape : String

structure ActinCortexContractilityEvidence (C : ActinCortexContractilityPackage) where
  myosinIIConcentrationClosed : C.myosinIIConcentration > 1.0
  actinFilamentDensityClosed : C.actinFilamentDensity > 1000.0
  crosslinkerDensityClosed : C.crosslinkerDensity > 100.0
  corticalTensionClosed : C.corticalTension > 0.5
  contractionRateClosed : C.contractionRate > 0.0
  cellShapeClosed : C.cellShape = "rounded"

def ActinCortexContractilityClosed (C : ActinCortexContractilityPackage) : Prop :=
  C.myosinIIConcentration > 1.0 ∧ C.actinFilamentDensity > 1000.0 ∧
  C.crosslinkerDensity > 100.0 ∧ C.corticalTension > 0.5 ∧
  C.contractionRate > 0.0 ∧ C.cellShape = "rounded"

theorem actin_cortex_contractility_closed_from_evidence
    (C : ActinCortexContractilityPackage)
    (E : ActinCortexContractilityEvidence C) :
    ActinCortexContractilityClosed C := by
  exact And.intro E.myosinIIConcentrationClosed
    (And.intro E.actinFilamentDensityClosed
      (And.intro E.crosslinkerDensityClosed
        (And.intro E.corticalTensionClosed
          (And.intro E.contractionRateClosed E.cellShapeClosed))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse