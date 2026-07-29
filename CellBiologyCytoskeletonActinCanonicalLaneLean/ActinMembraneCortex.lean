import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinMembraneCortexCore where
  membraneAttachment : Prop
  corticalTension : Prop
  mechanosensing : Prop
  protrusionRetraction : Prop

def ActinMembraneCortexCoreClosed (A : ActinMembraneCortexCore) : Prop :=
  A.membraneAttachment ∧ A.corticalTension ∧ A.mechanosensing ∧ A.protrusionRetraction

structure ActinMembraneCortexEvidence (A : ActinMembraneCortexCore) where
  membraneAttachmentClosed : A.membraneAttachment
  corticalTensionClosed : A.corticalTension
  mechanosensingClosed : A.mechanosensing
  protrusionRetractionClosed : A.protrusionRetraction

theorem actin_membrane_cortex_core_closed_from_evidence (A : ActinMembraneCortexCore) (E : ActinMembraneCortexEvidence A) : ActinMembraneCortexCoreClosed A :=
  And.intro E.membraneAttachmentClosed (And.intro E.corticalTensionClosed (And.intro E.mechanosensingClosed E.protrusionRetractionClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse