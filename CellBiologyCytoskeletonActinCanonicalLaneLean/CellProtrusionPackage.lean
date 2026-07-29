import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure CellProtrusionPackage (F : ActinFilament) where
  lamellipodia : Prop
  filopodia : Prop
  arp2_3Complex : Prop
  membraneProtrusion : Prop

structure CellProtrusionEvidence (F : ActinFilament) (P : CellProtrusionPackage F) where
  lamellipodiaClosed : P.lamellipodia
  filopodiaClosed : P.filopodia
  arp2_3ComplexClosed : P.arp2_3Complex
  membraneProtrusionClosed : P.membraneProtrusion

def CellProtrusionClosed (F : ActinFilament) (P : CellProtrusionPackage F) : Prop :=
  P.lamellipodia ∧ P.filopodia ∧ P.arp2_3Complex ∧ P.membraneProtrusion

theorem cellProtrusion_closed_from_evidence (F : ActinFilament) (P : CellProtrusionPackage F)
    (E : CellProtrusionEvidence F P) : CellProtrusionClosed F P := by
  exact And.intro E.lamellipodiaClosed
    (And.intro E.filopodiaClosed
      (And.intro E.arp2_3ComplexClosed E.membraneProtrusionClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse