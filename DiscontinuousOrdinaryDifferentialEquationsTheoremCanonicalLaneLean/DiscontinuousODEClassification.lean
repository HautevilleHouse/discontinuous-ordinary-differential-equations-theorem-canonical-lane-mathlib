import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuousODEObject where
  domain : Type u
  topology : TopologicalSpace domain
  vectorField : domain → domain
  discontinuitySet : Set domain
  discontinuitySetClosed : Prop
  solutionCurve : Type v
  solutionContinuous : Prop
  solutionSatisfiesODE : Prop
  uniquenessProperty : Prop

structure AdmissibleClass where
  object : DiscontinuousODEObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscontinuousODEClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse