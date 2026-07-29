import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinCanonicalLaneLean

structure ActinSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ActinFilament where
  length : Nat
  polarity : Bool
  plusEndCap : Bool
  minusEndCap : Bool

structure ActinAdmittedObject where
  space : ActinSpace
  filaments : List ActinFilament
  crosslinkers : Nat
  motorProteins : Nat
  boundaryConditions : Prop
  conclusion : boundaryConditions

def ActinWitnessClosed (O : ActinAdmittedObject) : Prop :=
  O.boundaryConditions

structure ActinEndgameState where
  object : ActinAdmittedObject

end CellBiologyCytoskeletonActinCanonicalLaneLean
end HautevilleHouse