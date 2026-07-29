import HautevilleHouse.CellBiologyCytoskeletonActinCanonicalLaneLean.ActinPolymerization

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinPolymerizationCertificate (P : ActinPolymerizationPackage) where
  polymerizationRateBound : Prop
  depolymerizationRateBound : Prop
  criticalConcentrationBound : Prop
  filamentNucleationWitness : Prop
  steadyStateLengthWitness : Prop
  polymerizationRateBoundClosed : polymerizationRateBound
  depolymerizationRateBoundClosed : depolymerizationRateBound
  criticalConcentrationBoundClosed : criticalConcentrationBound
  filamentNucleationWitnessClosed : filamentNucleationWitness
  steadyStateLengthWitnessClosed : steadyStateLengthWitness
  polymerizationEvidence : ActinPolymerizationEvidence P

def ActinPolymerizationCertificateClosed {P : ActinPolymerizationPackage}
    (C : ActinPolymerizationCertificate P) : Prop :=
  C.polymerizationRateBound ∧ C.depolymerizationRateBound ∧
  C.criticalConcentrationBound ∧ C.filamentNucleationWitness ∧
  C.steadyStateLengthWitness ∧ ActinPolymerizationClosed P

theorem actin_polymerization_certificate_closed {P : ActinPolymerizationPackage}
    (C : ActinPolymerizationCertificate P) : ActinPolymerizationCertificateClosed C := by
  exact And.intro C.polymerizationRateBoundClosed
    (And.intro C.depolymerizationRateBoundClosed
      (And.intro C.criticalConcentrationBoundClosed
        (And.intro C.filamentNucleationWitnessClosed
          (And.intro C.steadyStateLengthWitnessClosed
            (actin_polymerization_closed_from_evidence P C.polymerizationEvidence)))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse