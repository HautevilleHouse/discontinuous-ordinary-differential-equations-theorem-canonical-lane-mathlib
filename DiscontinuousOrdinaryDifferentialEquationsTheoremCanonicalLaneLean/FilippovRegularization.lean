import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure FilippovRegularization where
  vectorFieldFamily : Type u
  convexHullEnvelope : Type v
  differentialInclusionFormulation : Prop
  existenceOfSolutions : Prop
  upperSemicontinuity : Prop

structure FilippovEvidence (F : FilippovRegularization) where
  differentialInclusionFormulationClosed : F.differentialInclusionFormulation
  existenceOfSolutionsClosed : F.existenceOfSolutions
  upperSemicontinuityClosed : F.upperSemicontinuity

def FilippovRegularizationClosed (F : FilippovRegularization) : Prop :=
  F.differentialInclusionFormulation ∧ F.existenceOfSolutions ∧ F.upperSemicontinuity

theorem filippov_regularization_closed_from_evidence (F : FilippovRegularization) (E : FilippovEvidence F) :
    FilippovRegularizationClosed F := by
  exact And.intro E.differentialInclusionFormulationClosed
    (And.intro E.existenceOfSolutionsClosed E.upperSemicontinuityClosed)

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse