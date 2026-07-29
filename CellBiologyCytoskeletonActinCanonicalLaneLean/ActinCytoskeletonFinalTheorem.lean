import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytoskeletonActinCanonicalLaneLean.ActinCytoskeletonAdmittedObject

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ActinCytoskeletonWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedActinCytoskeletonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_actin_cytoskeleton_endgame (A : AdmissibleClass) : ConstrainedActinCytoskeletonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse