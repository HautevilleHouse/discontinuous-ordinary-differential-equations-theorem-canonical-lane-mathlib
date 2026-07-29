import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SolutionSpace where
  odeSystem : Type u
  discontinuitySet : Type v
  regularFlow : Type w
  solutionsInDistribution : Prop
  uniquenessAlmostEverywhere : Prop
  stabilityUnderPerturbation : Prop

structure SolutionSpaceEvidence (S : SolutionSpace) where
  solutionsInDistributionClosed : S.solutionsInDistribution
  uniquenessAlmostEverywhereClosed : S.uniquenessAlmostEverywhere
  stabilityUnderPerturbationClosed : S.stabilityUnderPerturbation

def SolutionSpaceClosed (S : SolutionSpace) : Prop :=
  S.solutionsInDistribution ∧ S.uniquenessAlmostEverywhere ∧ S.stabilityUnderPerturbation

theorem solution_space_closed_from_evidence (S : SolutionSpace) (E : SolutionSpaceEvidence S) :
    SolutionSpaceClosed S := by
  exact And.intro E.solutionsInDistributionClosed
    (And.intro E.uniquenessAlmostEverywhereClosed E.stabilityUnderPerturbationClosed)

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse