import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ActinProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  specificDefinitionsNative : Bool
  specificBridgeNative : Bool
  specificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def actinProofObligation : ActinProofObligation := {
  sourceKey := "cell-biology-cytoskeleton-actin-canonical-lane",
  theoremObject := "Actin Cytoskeleton Admissible Closure",
  commonCoreImported := true,
  specificDefinitionsNative := true,
  specificBridgeNative := true,
  specificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "specific actin closure over admitted class; unrestricted classical closure remains carried"
}

theorem actin_proof_obligation_common_core_imported :
    actinProofObligation.commonCoreImported = true := rfl

theorem actin_proof_obligation_specific_definitions_native :
    actinProofObligation.specificDefinitionsNative = true := rfl

theorem actin_proof_obligation_specific_bridge_native :
    actinProofObligation.specificBridgeNative = true := rfl

theorem actin_proof_obligation_specific_admitted_closure_native :
    actinProofObligation.specificAdmittedClosureNative = true := rfl

theorem actin_proof_obligation_unrestricted_classical_closure_carried :
    actinProofObligation.unrestrictedClassicalClosureNative = false := rfl

def theoremSpecificEndgamePilotClosed : Prop :=
  ∀ A : AdmissibleClass, ConstrainedActinClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_actin_endgame A

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse