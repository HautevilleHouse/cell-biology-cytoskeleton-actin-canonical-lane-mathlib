import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure CellMigrationForceGenerationPackage where
  lamellipodiumProtrusion : Prop
  focalAdhesionAssembly : Prop
  myosinIIContractility : Prop
  tractionForceGeneration : Prop
  retrogradeFlow : Prop
  migrationVelocityEquation : Prop

structure CellMigrationForceGenerationEvidence (M : CellMigrationForceGenerationPackage) where
  lamellipodiumProtrusionClosed : M.lamellipodiumProtrusion
  focalAdhesionAssemblyClosed : M.focalAdhesionAssembly
  myosinIIContractilityClosed : M.myosinIIContractility
  tractionForceGenerationClosed : M.tractionForceGeneration
  retrogradeFlowClosed : M.retrogradeFlow
  migrationVelocityEquationClosed : M.migrationVelocityEquation

def CellMigrationForceGenerationClosed (M : CellMigrationForceGenerationPackage) : Prop :=
  M.lamellipodiumProtrusion ∧ M.focalAdhesionAssembly ∧ M.myosinIIContractility ∧
  M.tractionForceGeneration ∧ M.retrogradeFlow ∧ M.migrationVelocityEquation

theorem cell_migration_force_generation_closed_from_evidence
    (M : CellMigrationForceGenerationPackage) (E : CellMigrationForceGenerationEvidence M) :
    CellMigrationForceGenerationClosed M := by
  exact And.intro E.lamellipodiumProtrusionClosed
    (And.intro E.focalAdhesionAssemblyClosed
      (And.intro E.myosinIIContractilityClosed
        (And.intro E.tractionForceGenerationClosed
          (And.intro E.retrogradeFlowClosed E.migrationVelocityEquationClosed))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse