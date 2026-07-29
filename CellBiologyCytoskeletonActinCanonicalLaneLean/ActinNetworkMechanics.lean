import canonicalLaneMathlib.AdmissibleClass

/-!
# Actin Network Mechanics Package
-/

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinNetworkMechanicsPackage where
  networkElasticModulus : Float
  networkViscosity : Float
  poroelasticCoupling : Prop
  contractility : Prop
  mechanosensingCompetence : Prop

structure ActinNetworkMechanicsEvidence (P : ActinNetworkMechanicsPackage) where
  networkElasticModulusClosed : P.networkElasticModulus > 0.0
  networkViscosityClosed : P.networkViscosity > 0.0
  poroelasticCouplingClosed : P.poroelasticCoupling
  contractilityClosed : P.contractility
  mechanosensingCompetenceClosed : P.mechanosensingCompetence

def ActinNetworkMechanicsClosed (P : ActinNetworkMechanicsPackage) : Prop :=
  P.networkElasticModulus > 0.0 ∧ P.networkViscosity > 0.0 ∧ P.poroelasticCoupling ∧ P.contractility ∧ P.mechanosensingCompetence

theorem actin_network_mechanics_closed_from_evidence (P : ActinNetworkMechanicsPackage)
    (E : ActinNetworkMechanicsEvidence P) : ActinNetworkMechanicsClosed P := by
  exact And.intro E.networkElasticModulusClosed (And.intro E.networkViscosityClosed
    (And.intro E.poroelasticCouplingClosed (And.intro E.contractilityClosed E.mechanosensingCompetenceClosed)))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse
