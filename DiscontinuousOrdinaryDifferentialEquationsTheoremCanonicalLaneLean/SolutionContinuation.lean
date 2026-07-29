import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.SpatialApproximations

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure ContinuationBeforeDiscontinuityPackage {F : FillipovRegularizationPackage} where
  maximumExistInterval : ℝ
  boundednessBeforeDiscontinuity : ∃ C, ∀ t < maximumExistInterval, ‖trajectory t‖ ≤ C
  blowUpCondition : ¬ (TrajectoryCanBeContinued) → ResetsToBoundary

def ContinuationClosed {F : FillipovRegularizationPackage} (C : ContinuationBeforeDiscontinuityPackage F) : Prop :=
  C.boundednessBeforeDiscontinuity

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse