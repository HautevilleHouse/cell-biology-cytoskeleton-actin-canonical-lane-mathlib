import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinCanonicalLaneLean.ActinFilamentDynamics
import HautevilleHouse.CellBiologyCytoskeletonActinCanonicalLaneLean.ActinBindingProteins

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure CellMotilityPackage (F : ActinFilamentDynamicsPackage) (B : ActinBindingProteinPackage) where
  protrusionFormation : Prop
  adhesionTurnover : Prop
  contraction : Prop
  netDisplacement : ℝ
  protrusionFormationDrivenByPolymerization : protrusionFormation → F.polymerizationRate > 0
  adhesionTurnoverRegulatedByBinding : adhesionTurnover → B.bindingAffinity > 0
  contractionRequiresDepolymerization : contraction → F.depolymerizationRate > 0
  netDisplacementPositive : netDisplacement > 0

structure CellMotilityEvidence (F : ActinFilamentDynamicsPackage) (B : ActinBindingProteinPackage) (M : CellMotilityPackage F B) where
  protrusionFormationClosed : M.protrusionFormation
  adhesionTurnoverClosed : M.adhesionTurnover
  contractionClosed : M.contraction
  netDisplacementPositiveClosed : M.netDisplacement > 0

def CellMotilityClosed (F : ActinFilamentDynamicsPackage) (B : ActinBindingProteinPackage) (M : CellMotilityPackage F B) : Prop :=
  M.protrusionFormation ∧ M.adhesionTurnover ∧ M.contraction ∧ M.netDisplacement > 0

theorem cell_motility_closed_from_evidence (F : ActinFilamentDynamicsPackage) (B : ActinBindingProteinPackage) (M : CellMotilityPackage F B) (E : CellMotilityEvidence F B M) : CellMotilityClosed F B M :=
  And.intro E.protrusionFormationClosed (And.intro E.adhesionTurnoverClosed (And.intro E.contractionClosed E.netDisplacementPositiveClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse