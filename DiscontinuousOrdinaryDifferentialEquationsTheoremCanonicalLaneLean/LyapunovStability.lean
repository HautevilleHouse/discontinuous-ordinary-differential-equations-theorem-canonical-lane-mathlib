import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure LyapunovStabilityPackage where
  lyapunovFunction : ℝⁿ → ℝ
  positiveDefinite : Prop
  derivativeAlongFlow : ℝⁿ → ℝ
  stabilityCondition : Prop
  asymptoticStability : Prop

structure LyapunovStabilityEvidence (L : LyapunovStabilityPackage) where
  positiveDefiniteClosed : L.positiveDefinite
  stabilityConditionClosed : L.stabilityCondition
  asymptoticStabilityClosed : L.asymptoticStability

def LyapunovStabilityClosed (L : LyapunovStabilityPackage) : Prop :=
  L.positiveDefinite ∧ L.stabilityCondition ∧ L.asymptoticStability

theorem lyapunov_stability_closed_from_evidence (L : LyapunovStabilityPackage) (E : LyapunovStabilityEvidence L) : LyapunovStabilityClosed L := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.stabilityConditionClosed E.asymptoticStabilityClosed)

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
