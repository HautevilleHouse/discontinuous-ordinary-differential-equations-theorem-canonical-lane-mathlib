import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuousODEsPackage where
  timeDomain : Type u
  stateSpace : Type v
  vectorField : timeDomain -> stateSpace -> Set (stateSpace)
  measurableInTime : Prop
  caratheodoryCondition : Prop
  existenceInterval : Prop
  uniquenessCondition : Prop

structure DiscontinuousODEsEvidence (P : DiscontinuousODEsPackage) where
  measurableInTimeClosed : P.measurableInTime
  caratheodoryConditionClosed : P.caratheodoryCondition
  existenceIntervalClosed : P.existenceInterval
  uniquenessConditionClosed : P.uniquenessCondition

def DiscontinuousODEsClosed (P : DiscontinuousODEsPackage) : Prop :=
  P.measurableInTime ∧ P.caratheodoryCondition ∧ P.existenceInterval ∧ P.uniquenessCondition

theorem discontinuous_odes_closed_from_evidence (P : DiscontinuousODEsPackage) (E : DiscontinuousODEsEvidence P) : DiscontinuousODEsClosed P := by
  exact And.intro E.measurableInTimeClosed (And.intro E.caratheodoryConditionClosed (And.intro E.existenceIntervalClosed E.uniquenessConditionClosed))

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
