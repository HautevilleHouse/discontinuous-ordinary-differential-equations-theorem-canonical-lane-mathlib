import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure KrasovskiiSolutionPackage where
  vectorField : ℝ × ℝ^n → ℝ^n
  convexifiedMap : ℝ × ℝ^n → Set (ℝ^n)
  selectionExists : Prop
  absolutelyContinuousSolution : Prop
  differentialInclusionSatisfied : Prop

structure KrasovskiiSolutionEvidence (P : KrasovskiiSolutionPackage) where
  selectionExistsClosed : P.selectionExists
  absolutelyContinuousSolutionClosed : P.absolutelyContinuousSolution
  differentialInclusionSatisfiedClosed : P.differentialInclusionSatisfied

def KrasovskiiSolutionClosed (P : KrasovskiiSolutionPackage) : Prop :=
  P.selectionExists ∧ P.absolutelyContinuousSolution ∧ P.differentialInclusionSatisfied

theorem krasovskii_solution_closed_from_evidence (P : KrasovskiiSolutionPackage) (E : KrasovskiiSolutionEvidence P) :
    KrasovskiiSolutionClosed P := by
  exact And.intro E.selectionExistsClosed (And.intro E.absolutelyContinuousSolutionClosed E.differentialInclusionSatisfiedClosed)

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse