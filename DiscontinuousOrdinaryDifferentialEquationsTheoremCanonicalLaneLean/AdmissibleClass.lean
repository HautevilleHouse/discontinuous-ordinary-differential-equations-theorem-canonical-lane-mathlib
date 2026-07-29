import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuousODESolution where
  domain : Type u
  topology : TopologicalSpace domain
  timeSpace : Type v
  timeTopology : TopologicalSpace timeSpace
  timeZero : timeSpace
  timeOrder : timeSpace → timeSpace → Prop
  stateSpace : Type w
  stateTopology : TopologicalSpace stateSpace
  vectorField : timeSpace → stateSpace → stateSpace
  initialCondition : stateSpace
  solutionCurve : timeSpace → stateSpace
  initialConditionSatisfied : solutionCurve timeZero = initialCondition
  almostEverywhereSatisfiesODE : Prop
  solutionDefinedAlmostEverywhere : Prop
  solutionAdmissible : Prop
  conclusion : solutionAdmissible

structure AdmissibleClass where
  object : DiscontinuousODESolution
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.solutionAdmissible ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse