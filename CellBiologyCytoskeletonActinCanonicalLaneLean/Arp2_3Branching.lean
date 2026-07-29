import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure Arp2_3BranchingCore where
  nucleationRegion : Prop
  branchAngleGeometry : Prop
  daughterFilamentRegulation : Prop
  debranchingCondition : Prop

def Arp2_3BranchingCoreClosed (A : Arp2_3BranchingCore) : Prop :=
  A.nucleationRegion ∧ A.branchAngleGeometry ∧ A.daughterFilamentRegulation ∧ A.debranchingCondition

structure Arp2_3BranchingEvidence (A : Arp2_3BranchingCore) where
  nucleationRegionClosed : A.nucleationRegion
  branchAngleGeometryClosed : A.branchAngleGeometry
  daughterFilamentRegulationClosed : A.daughterFilamentRegulation
  debranchingConditionClosed : A.debranchingCondition

theorem arp2_3_branching_core_closed_from_evidence (A : Arp2_3BranchingCore) (E : Arp2_3BranchingEvidence A) : Arp2_3BranchingCoreClosed A :=
  And.intro E.nucleationRegionClosed (And.intro E.branchAngleGeometryClosed (And.intro E.daughterFilamentRegulationClosed E.debranchingConditionClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse