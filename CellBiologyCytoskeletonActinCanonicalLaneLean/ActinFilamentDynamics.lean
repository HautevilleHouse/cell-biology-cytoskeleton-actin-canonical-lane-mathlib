import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinMonomerProps where
  boundGTP : Prop
  boundATP : Prop
  hydrolysisRate : ℕ
  criticalConcentration : ℝ

structure FilamentEnd where
  plusEnd : ActinMonomerProps
  minusEnd : ActinMonomerProps

structure ActinFilamentDynamicsPackage where
  monomersAvailable : ℕ
  nucleationRate : ℝ
  elongationRate : ℝ
  severingRate : ℝ
  cappingProteinPresent : Prop
  branchingComplexPresent : Prop
  filamentLengthDistribution : List ℝ

structure ActinFilamentDynamicsEvidence (A : ActinFilamentDynamicsPackage) where
  monomersAvailableClosed : A.monomersAvailable = 10^6
  nucleationRateClosed : A.nucleationRate > 0
  elongationRateClosed : A.elongationRate > 0
  cappingProteinPresentClosed : A.cappingProteinPresent
  branchingComplexPresentClosed : A.branchingComplexPresent

def ActinFilamentDynamicsClosed (A : ActinFilamentDynamicsPackage) : Prop :=
  A.monomersAvailable = 10^6 ∧ A.nucleationRate > 0 ∧ A.elongationRate > 0 ∧
  A.cappingProteinPresent ∧ A.branchingComplexPresent

theorem actin_filament_dynamics_closed_from_evidence
    (A : ActinFilamentDynamicsPackage) (E : ActinFilamentDynamicsEvidence A) :
    ActinFilamentDynamicsClosed A := by
  exact And.intro E.monomersAvailableClosed
    (And.intro E.nucleationRateClosed
      (And.intro E.elongationRateClosed
        (And.intro E.cappingProteinPresentClosed E.branchingComplexPresentClosed)))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse