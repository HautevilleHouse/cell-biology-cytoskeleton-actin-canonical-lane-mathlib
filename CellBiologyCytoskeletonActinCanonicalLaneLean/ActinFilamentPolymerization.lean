import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinMonomer where
  atpBound : Prop
  adpBound : Prop
  gActinState : Prop
  fActinIncorporate : Prop

structure ActinNucleotideState (M : ActinMonomer) where
  atpBound : M.atpBound
  adpBound : M.adpBound

structure ActinPolymerizationEnergy where
  criticalConcentration : ℚ
  nucleationRate : ℚ
  elongationRate : ℚ
  atpHydrolysisRate : ℚ

structure ActinFilamentPolymerizationPackage where
  monomer : ActinMonomer
  nucleotide : ActinNucleotideState monomer
  energyLandscape : ActinPolymerizationEnergy
  gActinConcentration : Prop
  fActinNucleation : Prop
  elongationByAtpGActin : Prop
  atpHydrolysisAfterIncorporation : Prop
  dynamicInstability : Prop

structure ActinFilamentPolymerizationEvidence
    (P : ActinFilamentPolymerizationPackage) where
  gActinConcentrationClosed : P.gActinConcentration
  fActinNucleationClosed : P.fActinNucleation
  elongationByAtpGActinClosed : P.elongationByAtpGActin
  atpHydrolysisAfterIncorporationClosed : P.atpHydrolysisAfterIncorporation
  dynamicInstabilityClosed : P.dynamicInstability

def ActinFilamentPolymerizationClosed (P : ActinFilamentPolymerizationPackage) : Prop :=
  P.gActinConcentration ∧ P.fActinNucleation ∧
  P.elongationByAtpGActin ∧ P.atpHydrolysisAfterIncorporation ∧
  P.dynamicInstability

theorem actin_filament_polymerization_closed_from_evidence
    (P : ActinFilamentPolymerizationPackage)
    (E : ActinFilamentPolymerizationEvidence P) :
    ActinFilamentPolymerizationClosed P := by
  exact And.intro E.gActinConcentrationClosed
    (And.intro E.fActinNucleationClosed
      (And.intro E.elongationByAtpGActinClosed
        (And.intro E.atpHydrolysisAfterIncorporationClosed
          E.dynamicInstabilityClosed)))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse