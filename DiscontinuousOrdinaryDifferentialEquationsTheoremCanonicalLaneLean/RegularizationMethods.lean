import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure RegularizationMethodPackage where
  regularizedVectorField : ℝ × ℝⁿ → ℝⁿ
  regularizationParameter : ℝ
  convergenceResult : Prop
  limitSolutionMatches : Prop
  numericalScheme : Prop

structure RegularizationMethodEvidence (R : RegularizationMethodPackage) where
  convergenceResultClosed : R.convergenceResult
  limitSolutionMatchesClosed : R.limitSolutionMatches
  numericalSchemeClosed : R.numericalScheme

def RegularizationMethodClosed (R : RegularizationMethodPackage) : Prop :=
  R.convergenceResult ∧ R.limitSolutionMatches ∧ R.numericalScheme

theorem regularization_method_closed_from_evidence (R : RegularizationMethodPackage) (E : RegularizationMethodEvidence R) : RegularizationMethodClosed R := by
  exact And.intro E.convergenceResultClosed (And.intro E.limitSolutionMatchesClosed E.numericalSchemeClosed)

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
