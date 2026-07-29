import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CaratheodorySolutionPackage where
  vectorField : ℝ × ℝ^n → ℝ^n
  measurableInTime : Prop
  continuousInState : Prop
  absolutelyContinuousSolution : Prop
  satisfiesODEAE : Prop

structure CaratheodorySolutionEvidence (P : CaratheodorySolutionPackage) where
  measurableInTimeClosed : P.measurableInTime
  continuousInStateClosed : P.continuousInState
  absolutelyContinuousSolutionClosed : P.absolutelyContinuousSolution
  satisfiesODEAEClosed : P.satisfiesODEAE

def CaratheodorySolutionClosed (P : CaratheodorySolutionPackage) : Prop :=
  P.measurableInTime ∧ P.continuousInState ∧ P.absolutelyContinuousSolution ∧ P.satisfiesODEAE

theorem caratheodory_solution_closed_from_evidence (P : CaratheodorySolutionPackage) (E : CaratheodorySolutionEvidence P) :
    CaratheodorySolutionClosed P := by
  exact And.intro E.measurableInTimeClosed (And.intro E.continuousInStateClosed (And.intro E.absolutelyContinuousSolutionClosed E.satisfiesODEAEClosed))

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse