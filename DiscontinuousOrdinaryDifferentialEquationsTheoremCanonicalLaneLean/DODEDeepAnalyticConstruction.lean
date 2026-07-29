import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuousDriftConstruction where
  driftFieldDefinition : Prop
  measurableSelection : Prop
  setValuedMapClosed : Prop
  castaingRepresentation : Prop
  upperSemiContinuity : Prop
  driftFieldDefinitionTerm : driftFieldDefinition
  measurableSelectionTerm : measurableSelection
  setValuedMapClosedTerm : setValuedMapClosed
  castaingRepresentationTerm : castaingRepresentation
  upperSemiContinuityTerm : upperSemiContinuity
  driftFieldFromConstruction : Prop

def DiscontinuousDriftConstruction.toFoundational
    (D : DiscontinuousDriftConstruction) : DriftFoundationalInhabitants := {
  driftFieldDefinition := D.driftFieldDefinition
  measurableSelection := D.measurableSelection
  setValuedMapClosed := D.setValuedMapClosed
  castaingRepresentation := D.castaingRepresentation
  upperSemiContinuity := D.upperSemiContinuity
  driftFieldDefinitionTerm := D.driftFieldDefinitionTerm
  measurableSelectionTerm := D.measurableSelectionTerm
  setValuedMapClosedTerm := D.setValuedMapClosedTerm
  castaingRepresentationTerm := D.castaingRepresentationTerm
  upperSemiContinuityTerm := D.upperSemiContinuityTerm
  driftFieldFromConstruction := D.driftFieldFromConstruction
}

end DiscontinuousOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse