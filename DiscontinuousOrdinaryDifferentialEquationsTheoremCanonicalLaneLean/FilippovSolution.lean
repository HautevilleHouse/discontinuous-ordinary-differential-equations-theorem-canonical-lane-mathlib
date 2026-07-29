import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure FilippovSolutionPackage where
  vectorField : ℝ → ℝ^n → ℝ^n
  setValuedMap : ℝ × ℝ^n → Set (ℝ^n)
  selectionExists : Prop
  solutionTakesValues : Prop
  absolutelyContinuous : Prop
  differentialInclusionSatisfied : Prop

structure FilippovSolutionEvidence (P : FilippovSolutionPackage) where
  selectionExistsClosed : P.selectionExists
  solutionTakesValuesClosed : P.solutionTakesValues
  absolutelyContinuousClosed : P.absolutelyContinuous
  differentialInclusionSatisfiedClosed : P.differentialInclusionSatisfied

def FilippovSolutionClosed (P : FilippovSolutionPackage) : Prop :=
  P.selectionExists ∧ P.solutionTakesValues ∧ P.absolutelyContinuous ∧ P.differentialInclusionSatisfied

theorem filippov_solution_closed_from_evidence (P : FilippovSolutionPackage) (E : FilippovSolutionEvidence P) :
    FilippovSolutionClosed P := by
  exact And.intro E.selectionExistsClosed (And.intro E.solutionTakesValuesClosed (And.intro E.absolutelyContinuousClosed E.differentialInclusionSatisfiedClosed))

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse