import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuousODEAdmittedObject where
  stateSpace : Type
  timeDomain : Type
  driftFunction : stateSpace → Set (Vector stateSpace)
  fillipovSolutionSet : Prop
  conclusion : fillipovSolutionSet

structure DiscontinuousODEEndgameState where
  object : DiscontinuousODEAdmittedObject

def DiscontinuousODEWitnessClosed (O : DiscontinuousODEAdmittedObject) : Prop :=
  O.fillipovSolutionSet

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse