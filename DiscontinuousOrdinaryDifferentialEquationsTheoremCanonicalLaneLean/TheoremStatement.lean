import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuousODEAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  odeSystem : space → space → Prop
  solution : space → space → Prop
  uniqueSolution : Prop
  solutionExists : Prop
  conclusion : solutionExists

structure DiscontinuousODEEndgameState where
  object : DiscontinuousODEAdmittedObject

def DiscontinuousODEWitnessClosed (O : DiscontinuousODEAdmittedObject) : Prop :=
  O.solutionExists

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse