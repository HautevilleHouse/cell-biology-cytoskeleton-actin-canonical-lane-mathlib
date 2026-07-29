import CellBiologyCytoskeletonActinCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinFilamentPackage where
  monomerBinding : Prop
  polymerization : Prop
  depolymerization : Prop
  nucleotideHydrolysis : Prop
  treadmilling : Prop
  branching : Prop

structure ActinFilamentEvidence (A : ActinFilamentPackage) where
  monomerBindingClosed : A.monomerBinding
  polymerizationClosed : A.polymerization
  depolymerizationClosed : A.depolymerization
  nucleotideHydrolysisClosed : A.nucleotideHydrolysis
  treadmillingClosed : A.treadmilling
  branchingClosed : A.branching

def ActinFilamentClosed (A : ActinFilamentPackage) : Prop :=
  A.monomerBinding ∧ A.polymerization ∧ A.depolymerization ∧
  A.nucleotideHydrolysis ∧ A.treadmilling ∧ A.branching

theorem actin_filament_closed_from_evidence (A : ActinFilamentPackage)
    (E : ActinFilamentEvidence A) : ActinFilamentClosed A := by
  exact And.intro E.monomerBindingClosed
    (And.intro E.polymerizationClosed
      (And.intro E.depolymerizationClosed
        (And.intro E.nucleotideHydrolysisClosed
          (And.intro E.treadmillingClosed E.branchingClosed))))

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse