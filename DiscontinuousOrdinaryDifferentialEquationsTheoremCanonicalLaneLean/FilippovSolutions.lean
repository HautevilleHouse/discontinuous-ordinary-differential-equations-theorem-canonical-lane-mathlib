import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure FilippovSolutionPackage where
  differentialInclusion : Set (ℝ × ℝⁿ × ℝⁿ)
  absolutelyContinuous : ℝ → ℝⁿ → Prop
  satisfiesInclusionAlmostEverywhere : Prop
  maximalExtension : Prop

structure FilippovSolutionEvidence (F : FilippovSolutionPackage) where
  absolutelyContinuousClosed : F.absolutelyContinuous
  satisfiesInclusionAlmostEverywhereClosed : F.satisfiesInclusionAlmostEverywhere
  maximalExtensionClosed : F.maximalExtension

def FilippovSolutionClosed (F : FilippovSolutionPackage) : Prop :=
  F.absolutelyContinuous ∧ F.satisfiesInclusionAlmostEverywhere ∧ F.maximalExtension

theorem filippov_solution_closed_from_evidence (F : FilippovSolutionPackage) (E : FilippovSolutionEvidence F) : FilippovSolutionClosed F := by
  exact And.intro E.absolutelyContinuousClosed (And.intro E.satisfiesInclusionAlmostEverywhereClosed E.maximalExtensionClosed)

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
