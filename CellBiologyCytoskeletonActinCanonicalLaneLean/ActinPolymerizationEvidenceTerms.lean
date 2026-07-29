import HautevilleHouse.CellBiologyCytoskeletonActinCanonicalLaneLean.ActinPolymerizationProof

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinPolymerizationEvidenceTerms {P : ActinPolymerizationPackage}
    (C : ActinPolymerizationCertificate P) where
  polymerizationRateBound : C.polymerizationRateBound
  depolymerizationRateBound : C.depolymerizationRateBound
  criticalConcentrationBound : C.criticalConcentrationBound
  filamentNucleationWitness : C.filamentNucleationWitness
  steadyStateLengthWitness : C.steadyStateLengthWitness
  polymerizationClosed : ActinPolymerizationClosed P

def ActinPolymerizationCertificate.evidenceTerms {P : ActinPolymerizationPackage}
    (C : ActinPolymerizationCertificate P) : ActinPolymerizationEvidenceTerms C := {
  polymerizationRateBound := C.polymerizationRateBoundClosed,
  depolymerizationRateBound := C.depolymerizationRateBoundClosed,
  criticalConcentrationBound := C.criticalConcentrationBoundClosed,
  filamentNucleationWitness := C.filamentNucleationWitnessClosed,
  steadyStateLengthWitness := C.steadyStateLengthWitnessClosed,
  polymerizationClosed := actin_polymerization_closed_from_evidence P C.polymerizationEvidence
}

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse