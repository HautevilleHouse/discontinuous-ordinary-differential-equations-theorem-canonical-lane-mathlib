import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SlidingModePackage where
  switchingSurface : Set ℝⁿ
  slidingDynamics : ℝⁿ → ℝⁿ
  existenceCondition : Prop
  uniquenessCondition : Prop
  equivalentControl : Prop

structure SlidingModeEvidence (S : SlidingModePackage) where
  existenceConditionClosed : S.existenceCondition
  uniquenessConditionClosed : S.uniquenessCondition
  equivalentControlClosed : S.equivalentControl

def SlidingModeClosed (S : SlidingModePackage) : Prop :=
  S.existenceCondition ∧ S.uniquenessCondition ∧ S.equivalentControl

theorem sliding_mode_closed_from_evidence (S : SlidingModePackage) (E : SlidingModeEvidence S) : SlidingModeClosed S := by
  exact And.intro E.existenceConditionClosed (And.intro E.uniquenessConditionClosed E.equivalentControlClosed)

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
