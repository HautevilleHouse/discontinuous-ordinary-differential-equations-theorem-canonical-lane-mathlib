import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.FillipovSolution

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SpatialApproximationPackage {F : FillipovRegularizationPackage} where
  smoothApproximation : ℕ → (ℝⁿ → ℝⁿ)
  limitProperty : ∀ x, (λ n => smoothApproximation n x) → setValuedMap x
  errorEstimates : ℕ → ℝ
  errorDecay : ∀ ε > 0, ∃ N, ∀ n ≥ N, errorEstimates n < ε

def SpatialApproximationClosed {F : FillipovRegularizationPackage} (S : SpatialApproximationPackage F) : Prop :=
  S.limitProperty ∧ S.errorDecay

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse