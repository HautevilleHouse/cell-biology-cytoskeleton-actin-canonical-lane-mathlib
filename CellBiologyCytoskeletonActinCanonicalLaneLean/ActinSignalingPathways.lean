import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinSignalingPathwaysPackage where
  rhoGTPaseRegulation : Prop
  racActivation : Prop
  cdc42FilopodiaInduction : Prop
  pi3kAktSignaling : Prop
  calciumDependentPathways : Prop
  mapkCascade : Prop

structure ActinSignalingPathwaysEvidence (A : ActinSignalingPathwaysPackage) where
  rhoGTPaseRegulationClosed : A.rhoGTPaseRegulation
  racActivationClosed : A.racActivation
  cdc42FilopodiaInductionClosed : A.cdc42FilopodiaInduction
  pi3kAktSignalingClosed : A.pi3kAktSignaling
  calciumDependentPathwaysClosed : A.calciumDependentPathways
  mapkCascadeClosed : A.mapkCascade

def ActinSignalingPathwaysClosed (A : ActinSignalingPathwaysPackage) : Prop :=
  A.rhoGTPaseRegulation ∧ A.racActivation ∧ A.cdc42FilopodiaInduction ∧
  A.pi3kAktSignaling ∧ A.calciumDependentPathways ∧ A.mapkCascade

theorem actin_signaling_pathways_closed_from_evidence
    (A : ActinSignalingPathwaysPackage) (E : ActinSignalingPathwaysEvidence A) :
    ActinSignalingPathwaysClosed A := by
  exact And.intro E.rhoGTPaseRegulationClosed
    (And.intro E.racActivationClosed
      (And.intro E.cdc42FilopodiaInductionClosed
        (And.intro E.pi3kAktSignalingClosed
          (And.intro E.calciumDependentPathwaysClosed E.mapkCascadeClosed))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse