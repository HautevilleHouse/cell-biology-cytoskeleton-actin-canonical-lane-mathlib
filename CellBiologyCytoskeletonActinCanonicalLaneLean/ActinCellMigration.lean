import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure CellMigrationPackage where
  leadingEdgeProtrusionRate : ℝ
  trailingEdgeRetractionRate : ℝ
  adhesionTurnoverRate : ℝ
  polarityEstablished : Prop
  migrationSpeed : ℝ
  persistenceTime : ℝ

structure CellMigrationEvidence (M : CellMigrationPackage) where
  leadingEdgeProtrusionRateClosed : M.leadingEdgeProtrusionRate > 0.1
  trailingEdgeRetractionRateClosed : M.trailingEdgeRetractionRate > 0.05
  adhesionTurnoverRateClosed : M.adhesionTurnoverRate > 0.0
  polarityEstablishedClosed : M.polarityEstablished
  migrationSpeedClosed : M.migrationSpeed > 0.0
  persistenceTimeClosed : M.persistenceTime > 60.0

def CellMigrationClosed (M : CellMigrationPackage) : Prop :=
  M.leadingEdgeProtrusionRate > 0.1 ∧ M.trailingEdgeRetractionRate > 0.05 ∧
  M.adhesionTurnoverRate > 0.0 ∧ M.polarityEstablished ∧
  M.migrationSpeed > 0.0 ∧ M.persistenceTime > 60.0

theorem cell_migration_closed_from_evidence
    (M : CellMigrationPackage) (E : CellMigrationEvidence M) :
    CellMigrationClosed M := by
  exact And.intro E.leadingEdgeProtrusionRateClosed
    (And.intro E.trailingEdgeRetractionRateClosed
      (And.intro E.adhesionTurnoverRateClosed
        (And.intro E.polarityEstablishedClosed
          (And.intro E.migrationSpeedClosed E.persistenceTimeClosed))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse