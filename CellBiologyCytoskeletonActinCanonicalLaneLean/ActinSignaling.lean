import canonicalLaneMathlib.AdmissibleClass

/-!
# Actin Signaling Pathways Package
-/

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure RhoGTPase where
  gtpBoundActive : Prop
  targetEffectorInteraction : Prop

structure ActinSignalingPackage where
  rho : RhoGTPase
  rac : RhoGTPase
  cdc42 : RhoGTPase
  upstreamSignals : Prop
  downstreamPathways : Prop
  pathwayCrossTalk : Prop

structure ActinSignalingEvidence (P : ActinSignalingPackage) where
  rhoActiveClosed : P.rho.gtpBoundActive
  racActiveClosed : P.rac.gtpBoundActive
  cdc42ActiveClosed : P.cdc42.gtpBoundActive
  upstreamSignalsClosed : P.upstreamSignals
  downstreamPathwaysClosed : P.downstreamPathways
  pathwayCrossTalkClosed : P.pathwayCrossTalk

def ActinSignalingClosed (P : ActinSignalingPackage) : Prop :=
  P.rho.gtpBoundActive ∧ P.rac.gtpBoundActive ∧ P.cdc42.gtpBoundActive ∧ P.upstreamSignals ∧ P.downstreamPathways ∧ P.pathwayCrossTalk

theorem actin_signaling_closed_from_evidence (P : ActinSignalingPackage) (E : ActinSignalingEvidence P) :
    ActinSignalingClosed P := by
  exact And.intro E.rhoActiveClosed (And.intro E.racActiveClosed (And.intro E.cdc42ActiveClosed
    (And.intro E.upstreamSignalsClosed (And.intro E.downstreamPathwaysClosed E.pathwayCrossTalkClosed))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse
