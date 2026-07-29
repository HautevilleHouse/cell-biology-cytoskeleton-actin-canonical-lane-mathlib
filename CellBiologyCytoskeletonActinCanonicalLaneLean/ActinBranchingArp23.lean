import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytoskeletonActinCanonicalLaneLean.ActinCytoskeletonAdmittedObject

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure BranchingPackage where
  arp23Complex : Type u
  nucleationPromotion : Prop
  branchAngle : Prop
  regulationByWASP : Prop
  debranching : Prop

structure BranchingEvidence (B : BranchingPackage) where
  nucleationPromotionClosed : B.nucleationPromotion
  branchAngleClosed : B.branchAngle
  regulationByWASPClosed : B.regulationByWASP
  debranchingClosed : B.debranching

def BranchingClosed (B : BranchingPackage) : Prop :=
  B.nucleationPromotion ∧ B.branchAngle ∧ B.regulationByWASP ∧ B.debranching

theorem branching_closed_from_evidence (B : BranchingPackage) (E : BranchingEvidence B) : BranchingClosed B := by
  exact And.intro E.nucleationPromotionClosed (And.intro E.branchAngleClosed (And.intro E.regulationByWASPClosed E.debranchingClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse