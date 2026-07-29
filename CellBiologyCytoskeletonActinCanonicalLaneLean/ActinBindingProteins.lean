import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinBindingProtein where
  proteinName : String
  bindingAffinity : ℝ
  function : String

structure ActinBindingProteinsPackage where
  nucleators : List ActinBindingProtein
  cappingProteins : List ActinBindingProtein
  severingProteins : List ActinBindingProtein
  crosslinkers : List ActinBindingProtein
  branchingComplex : ActinBindingProtein
  filamentTracker : ActinBindingProtein

structure ActinBindingProteinsEvidence (B : ActinBindingProteinsPackage) where
  nucleatorsPresent : B.nucleators.length ≥ 2
  cappingProteinsPresent : B.cappingProteins.length ≥ 1
  severingProteinsPresent : B.severingProteins.length ≥ 1
  crosslinkersPresent : B.crosslinkers.length ≥ 2
  branchingComplexPresent : B.branchingComplex.bindingAffinity > 0.5
  filamentTrackerPresent : B.filamentTracker.function = "end_tracking"

def ActinBindingProteinsClosed (B : ActinBindingProteinsPackage) : Prop :=
  B.nucleators.length ≥ 2 ∧ B.cappingProteins.length ≥ 1 ∧
  B.severingProteins.length ≥ 1 ∧ B.crosslinkers.length ≥ 2 ∧
  B.branchingComplex.bindingAffinity > 0.5 ∧ B.filamentTracker.function = "end_tracking"

theorem actin_binding_proteins_closed_from_evidence
    (B : ActinBindingProteinsPackage) (E : ActinBindingProteinsEvidence B) :
    ActinBindingProteinsClosed B := by
  exact And.intro E.nucleatorsPresent
    (And.intro E.cappingProteinsPresent
      (And.intro E.severingProteinsPresent
        (And.intro E.crosslinkersPresent
          (And.intro E.branchingComplexPresent E.filamentTrackerPresent))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse