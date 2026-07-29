import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinCanonicalLaneLean.ActinAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.polymerizationCapacity ∧ A.object.bindingProteinPresent → A.object.motilityEnabled

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse