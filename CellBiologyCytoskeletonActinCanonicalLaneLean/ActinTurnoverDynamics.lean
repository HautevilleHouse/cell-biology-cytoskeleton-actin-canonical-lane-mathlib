import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinTurnoverDynamicsCore where
  monomerOnRate : Prop
  monomerOffRate : Prop
  cofilinSevering : Prop
  nucleotideExchange : Prop

def ActinTurnoverDynamicsCoreClosed (A : ActinTurnoverDynamicsCore) : Prop :=
  A.monomerOnRate ∧ A.monomerOffRate ∧ A.cofilinSevering ∧ A.nucleotideExchange

structure ActinTurnoverDynamicsEvidence (A : ActinTurnoverDynamicsCore) where
  monomerOnRateClosed : A.monomerOnRate
  monomerOffRateClosed : A.monomerOffRate
  cofilinSeveringClosed : A.cofilinSevering
  nucleotideExchangeClosed : A.nucleotideExchange

theorem actin_turnover_dynamics_core_closed_from_evidence (A : ActinTurnoverDynamicsCore) (E : ActinTurnoverDynamicsEvidence A) : ActinTurnoverDynamicsCoreClosed A :=
  And.intro E.monomerOnRateClosed (And.intro E.monomerOffRateClosed (And.intro E.cofilinSeveringClosed E.nucleotideExchangeClosed))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse