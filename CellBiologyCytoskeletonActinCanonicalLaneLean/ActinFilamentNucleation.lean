import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytoskeletonActinCanonicalLaneLean.ActinCytoskeletonAdmittedObject

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure NucleationPackage where
  actinMonomer : Type u
  nucleationBarrier : Prop
  criticalConcentration : Prop
  elongationRate : Prop
  stability : Prop

structure NucleationEvidence (N : NucleationPackage) where
  nucleationBarrierClosed : N.nucleationBarrier
  criticalConcentrationClosed : N.criticalConcentration
  elongationRateClosed : N.elongationRate
  stabilityClosed : N.stability

def NucleationClosed (N : NucleationPackage) : Prop :=
  N.nucleationBarrier ∧ N.criticalConcentration ∧ N.elongationRate ∧ N.stability

theorem nucleation_closed_from_evidence (N : NucleationPackage) (E : NucleationEvidence N) : NucleationClosed N := by
  exact And.intro E.nucleationBarrierClosed (And.intro E.criticalConcentrationClosed (And.intro E.elongationRateClosed E.stabilityClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse