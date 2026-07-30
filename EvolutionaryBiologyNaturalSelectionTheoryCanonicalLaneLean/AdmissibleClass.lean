import HautevilleHouse.EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedNaturalSelectionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NaturalSelectionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse
