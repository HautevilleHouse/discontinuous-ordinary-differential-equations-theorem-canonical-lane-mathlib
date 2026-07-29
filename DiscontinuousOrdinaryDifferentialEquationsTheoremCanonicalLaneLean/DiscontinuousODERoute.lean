import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure RouteObligations where
  fillipovSolution : Prop
  measurableSelection : Prop
  setValuedMapUpperSemicontinuous : Prop
  absolutelyContinuousTrajectory : Prop

def RouteClosed (R : RouteObligations) : Prop :=
  R.fillipovSolution ∧ R.measurableSelection ∧
  R.setValuedMapUpperSemicontinuous ∧ R.absolutelyContinuousTrajectory

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse