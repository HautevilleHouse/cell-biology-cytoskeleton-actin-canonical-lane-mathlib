import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinPolymerizationDynamicsPackage where
  monomerConcentration : ℝ
  criticalConcentration : ℝ
  nucleationRate : ℝ
  elongationRate : ℝ
  severingRate : ℝ
  polymerizationRateEquation : Prop
  treadmillingSteadyState : Prop

structure ActinPolymerizationDynamicsEvidence (P : ActinPolymerizationDynamicsPackage) where
  polymerizationRateEquationClosed : P.polymerizationRateEquation
  treadmillingSteadyStateClosed : P.treadmillingSteadyState

def ActinPolymerizationDynamicsClosed (P : ActinPolymerizationDynamicsPackage) : Prop :=
  P.polymerizationRateEquation ∧ P.treadmillingSteadyState

theorem actin_polymerization_dynamics_closed_from_evidence
    (P : ActinPolymerizationDynamicsPackage) (E : ActinPolymerizationDynamicsEvidence P) :
    ActinPolymerizationDynamicsClosed P := by
  exact And.intro E.polymerizationRateEquationClosed E.treadmillingSteadyStateClosed

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse