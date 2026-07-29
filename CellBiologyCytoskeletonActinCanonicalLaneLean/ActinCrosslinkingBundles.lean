import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytoskeletonActinCanonicalLaneLean.ActinCytoskeletonAdmittedObject

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure CrosslinkingPackage where
  crosslinkerProtein : Type u
  filamentBinding : Prop
  bundleFormation : Prop
  spacingRegulation : Prop
  cooperativity : Prop

structure CrosslinkingEvidence (C : CrosslinkingPackage) where
  filamentBindingClosed : C.filamentBinding
  bundleFormationClosed : C.bundleFormation
  spacingRegulationClosed : C.spacingRegulation
  cooperativityClosed : C.cooperativity

def CrosslinkingClosed (C : CrosslinkingPackage) : Prop :=
  C.filamentBinding ∧ C.bundleFormation ∧ C.spacingRegulation ∧ C.cooperativity

theorem crosslinking_closed_from_evidence (C : CrosslinkingPackage) (E : CrosslinkingEvidence C) : CrosslinkingClosed C := by
  exact And.intro E.filamentBindingClosed (And.intro E.bundleFormationClosed (And.intro E.spacingRegulationClosed E.cooperativityClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse