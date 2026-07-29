import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure CellMotilityPackage (A : AdmissibleClass) where
  actinPolymerizationForces : ℝ
  myosinContractility : ℝ
  focalAdhesionTurnover : ℝ
  leadingEdgeProtrusionRate : ℝ
  trailingEdgeRetractionRate : ℝ
  directionalSensing : Prop
  chemotaxisPreference : Prop
  lamellipodiumFormation : Prop
  filopodiumExtension : Prop
  stressFiberAssembly : Prop
  cortexRigidity : ℝ
  migrationSpeed : ℝ

structure CellMotilityEvidence (A : AdmissibleClass) (M : CellMotilityPackage A) where
  actinPolymerizationForcesClosed : M.actinPolymerizationForces > 0
  myosinContractilityClosed : M.myosinContractility > 0
  focalAdhesionTurnoverClosed : M.focalAdhesionTurnover > 0
  leadingEdgeProtrusionRateClosed : M.leadingEdgeProtrusionRate > 0
  trailingEdgeRetractionRateClosed : M.trailingEdgeRetractionRate < 0
  directionalSensingClosed : M.directionalSensing
  chemotaxisPreferenceClosed : M.chemotaxisPreference
  lamellipodiumFormationClosed : M.lamellipodiumFormation
  filopodiumExtensionClosed : M.filopodiumExtension
  stressFiberAssemblyClosed : M.stressFiberAssembly
  cortexRigidityClosed : M.cortexRigidity ≥ 0
  migrationSpeedClosed : M.migrationSpeed > 0

def CellMotilityClosed (A : AdmissibleClass) (M : CellMotilityPackage A) : Prop :=
  M.actinPolymerizationForces > 0 ∧ M.myosinContractility > 0 ∧
  M.focalAdhesionTurnover > 0 ∧ M.leadingEdgeProtrusionRate > 0 ∧
  M.trailingEdgeRetractionRate < 0 ∧ M.directionalSensing ∧
  M.chemotaxisPreference ∧ M.lamellipodiumFormation ∧
  M.filopodiumExtension ∧ M.stressFiberAssembly ∧
  M.cortexRigidity ≥ 0 ∧ M.migrationSpeed > 0

theorem cell_motility_closed_from_evidence
    (A : AdmissibleClass) (M : CellMotilityPackage A) (E : CellMotilityEvidence A M) :
    CellMotilityClosed A M :=
  by
    refine And.intro E.actinPolymerizationForcesClosed
      (And.intro E.myosinContractilityClosed
        (And.intro E.focalAdhesionTurnoverClosed
          (And.intro E.leadingEdgeProtrusionRateClosed
            (And.intro E.trailingEdgeRetractionRateClosed
              (And.intro E.directionalSensingClosed
                (And.intro E.chemotaxisPreferenceClosed
                  (And.intro E.lamellipodiumFormationClosed
                    (And.intro E.filopodiumExtensionClosed
                      (And.intro E.stressFiberAssemblyClosed
                        (And.intro E.cortexRigidityClosed E.migrationSpeedClosed))))))))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse