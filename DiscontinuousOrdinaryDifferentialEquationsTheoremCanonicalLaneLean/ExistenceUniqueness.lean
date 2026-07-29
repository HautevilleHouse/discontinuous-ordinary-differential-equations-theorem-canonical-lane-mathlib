import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.SolutionContinuation

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure ExistenceUniquenessPackage {F : FillipovRegularizationPackage} where
  solutionExists : ∀ initialCondition, ∃ solution extendingFromInitial
  uniqueSolution : ∀ initialCondition, solutionExists → UniqueSolution
  stabilityUnderApproximations : ∀ approximateSolutions, limitOfApproximationsIsSolution

def ExistenceUniquenessClosed {F : FillipovRegularizationPackage} (E : ExistenceUniquenessPackage F) : Prop :=
  E.solutionExists ∧ E.uniqueSolution

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse