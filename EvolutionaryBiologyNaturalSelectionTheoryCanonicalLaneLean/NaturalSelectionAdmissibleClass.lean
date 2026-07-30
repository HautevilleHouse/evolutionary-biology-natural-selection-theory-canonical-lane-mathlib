import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure NaturalSelectionAdmittedObject where
  population : Type
  fitnessFunction : population → ℝ
  heritableVariation : Prop
  differentialReproduction : Prop
  traitChangeOverTime : Prop
  conclusion : heritableVariation ∧ differentialReproduction ∧ traitChangeOverTime

structure NaturalSelectionAdmissibleClass where
  object : NaturalSelectionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : NaturalSelectionAdmissibleClass) : Prop :=
  NaturalSelectionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse