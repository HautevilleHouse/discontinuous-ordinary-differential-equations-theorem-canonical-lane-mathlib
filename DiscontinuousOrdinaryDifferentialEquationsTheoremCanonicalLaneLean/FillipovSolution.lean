import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure FillipovSolutionPackage where
  differentialInclusion : Prop
  absolutelyContinuousSolution : Prop
  existenceConditions : Prop
  uniquenessConditions : Prop

def FillipovSolutionClosed (F : FillipovSolutionPackage) : Prop :=
  F.differentialInclusion ∧ F.absolutelyContinuousSolution ∧
  F.existenceConditions ∧ F.uniquenessConditions

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse