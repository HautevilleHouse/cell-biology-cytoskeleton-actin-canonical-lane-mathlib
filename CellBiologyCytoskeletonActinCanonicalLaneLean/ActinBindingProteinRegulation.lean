import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinBindingProteinRegulationPackage where
  profilinBinding : Prop
  cofilinBinding : Prop
  arp23ComplexNucleation : Prop
  forminMediatedElongation : Prop
  cappingProteinRegulation : Prop
  crosslinkingProteins : Prop

structure ActinBindingProteinRegulationEvidence (A : ActinBindingProteinRegulationPackage) where
  profilinBindingClosed : A.profilinBinding
  cofilinBindingClosed : A.cofilinBinding
  arp23ComplexNucleationClosed : A.arp23ComplexNucleation
  forminMediatedElongationClosed : A.forminMediatedElongation
  cappingProteinRegulationClosed : A.cappingProteinRegulation
  crosslinkingProteinsClosed : A.crosslinkingProteins

def ActinBindingProteinRegulationClosed (A : ActinBindingProteinRegulationPackage) : Prop :=
  A.profilinBinding ∧ A.cofilinBinding ∧ A.arp23ComplexNucleation ∧
  A.forminMediatedElongation ∧ A.cappingProteinRegulation ∧ A.crosslinkingProteins

theorem actin_binding_protein_regulation_closed_from_evidence
    (A : ActinBindingProteinRegulationPackage) (E : ActinBindingProteinRegulationEvidence A) :
    ActinBindingProteinRegulationClosed A := by
  exact And.intro E.profilinBindingClosed
    (And.intro E.cofilinBindingClosed
      (And.intro E.arp23ComplexNucleationClosed
        (And.intro E.forminMediatedElongationClosed
          (And.intro E.cappingProteinRegulationClosed E.crosslinkingProteinsClosed))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse