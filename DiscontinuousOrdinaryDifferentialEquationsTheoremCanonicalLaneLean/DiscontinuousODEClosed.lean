import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

def DiscontinuousODEClosed (O : DiscontinuousODEObject) : Prop :=
  O.solutionContinuous ∧ O.solutionSatisfiesODE ∧ O.uniquenessProperty

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse