import NaturalSelectionAdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

def bridgeClosed (A : NaturalSelectionAdmissibleClass) : Prop :=
  NaturalSelectionWitnessClosed A.object

theorem bridge_from_admissible_class (A : NaturalSelectionAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def NaturalSelectionWitnessClosed (O : NaturalSelectionAdmittedObject) : Prop :=
  O.heritableVariation ∧ O.differentialReproduction ∧ O.traitChangeOverTime

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse