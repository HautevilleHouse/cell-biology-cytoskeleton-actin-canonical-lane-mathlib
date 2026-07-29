import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinCellMotilityPackage where
  lamellipodiumProtrusion : Prop
  filopodiumFormation : Prop
  focalAdhesionTurnover : Prop
  actomyosinContraction : Prop
  retrogradeFlow : Prop
  cellMigrationPolarity : Prop

structure ActinCellMotilityEvidence (A : ActinCellMotilityPackage) where
  lamellipodiumProtrusionClosed : A.lamellipodiumProtrusion
  filopodiumFormationClosed : A.filopodiumFormation
  focalAdhesionTurnoverClosed : A.focalAdhesionTurnover
  actomyosinContractionClosed : A.actomyosinContraction
  retrogradeFlowClosed : A.retrogradeFlow
  cellMigrationPolarityClosed : A.cellMigrationPolarity

def ActinCellMotilityClosed (A : ActinCellMotilityPackage) : Prop :=
  A.lamellipodiumProtrusion ∧ A.filopodiumFormation ∧ A.focalAdhesionTurnover ∧
  A.actomyosinContraction ∧ A.retrogradeFlow ∧ A.cellMigrationPolarity

theorem actin_cell_motility_closed_from_evidence
    (A : ActinCellMotilityPackage) (E : ActinCellMotilityEvidence A) :
    ActinCellMotilityClosed A := by
  exact And.intro E.lamellipodiumProtrusionClosed
    (And.intro E.filopodiumFormationClosed
      (And.intro E.focalAdhesionTurnoverClosed
        (And.intro E.actomyosinContractionClosed
          (And.intro E.retrogradeFlowClosed E.cellMigrationPolarityClosed))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse