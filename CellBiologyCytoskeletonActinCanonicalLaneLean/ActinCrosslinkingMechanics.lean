import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinFilament where
  plusEnd : Prop
  minusEnd : Prop
  polarity : Prop
  filamentLength : ℚ

structure CrosslinkingProtein where
  actinBindingDomain : Prop
  crosslinkingAffinity : ℚ
  bundlingPropensity : ℚ
  networkArchitecture : Prop

structure ActinCrosslinkingPackage where
  filamentA : ActinFilament
  filamentB : ActinFilament
  crosslinker : CrosslinkingProtein
  crosslinkerBinding : Prop
  filamentBundling : Prop
  networkGelation : Prop
  mechanicalStiffness : ℚ

structure ActinCrosslinkingEvidence (C : ActinCrosslinkingPackage) where
  crosslinkerBindingClosed : C.crosslinkerBinding
  filamentBundlingClosed : C.filamentBundling
  networkGelationClosed : C.networkGelation
  mechanicalStiffnessClosed : C.mechanicalStiffness = 0.5

def ActinCrosslinkingClosed (C : ActinCrosslinkingPackage) : Prop :=
  C.crosslinkerBinding ∧ C.filamentBundling ∧
  C.networkGelation ∧ (C.mechanicalStiffness = 0.5)

theorem actin_crosslinking_closed_from_evidence
    (C : ActinCrosslinkingPackage)
    (E : ActinCrosslinkingEvidence C) :
    ActinCrosslinkingClosed C := by
  have h : C.mechanicalStiffness = 0.5 := E.mechanicalStiffnessClosed
  exact And.intro E.crosslinkerBindingClosed
    (And.intro E.filamentBundlingClosed
      (And.intro E.networkGelationClosed h))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse