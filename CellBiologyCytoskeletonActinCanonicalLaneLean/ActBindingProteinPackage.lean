import CellBiologyCytoskeletonActinCanonicalLaneLean.ActinFilamentPackage

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActBindingProteinPackage {A : ActinFilamentPackage} (F : ActinFilamentPackage) where
  arp2_3Complex : Prop
  cofilin : Prop
  profilin : Prop
  cappingProtein : Prop
  crosslinkingProtein : Prop
  membraneAnchor : Prop

structure ActBindingProteinEvidence {A : ActinFilamentPackage} {F : ActinFilamentPackage}
    (B : ActBindingProteinPackage F) where
  arp2_3ComplexClosed : B.arp2_3Complex
  cofilinClosed : B.cofilin
  profilinClosed : B.profilin
  cappingProteinClosed : B.cappingProtein
  crosslinkingProteinClosed : B.crosslinkingProtein
  membraneAnchorClosed : B.membraneAnchor

def ActBindingProteinClosed {A : ActinFilamentPackage} {F : ActinFilamentPackage}
    (B : ActBindingProteinPackage F) : Prop :=
  B.arp2_3Complex ∧ B.cofilin ∧ B.profilin ∧
  B.cappingProtein ∧ B.crosslinkingProtein ∧ B.membraneAnchor

theorem act_binding_protein_closed_from_evidence {A : ActinFilamentPackage} {F : ActinFilamentPackage}
    (B : ActBindingProteinPackage F) (E : ActBindingProteinEvidence B) :
    ActBindingProteinClosed B := by
  exact And.intro E.arp2_3ComplexClosed
    (And.intro E.cofilinClosed
      (And.intro E.profilinClosed
        (And.intro E.cappingProteinClosed
          (And.intro E.crosslinkingProteinClosed E.membraneAnchorClosed))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse