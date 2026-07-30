import NaturalSelectionAdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure PopulationGeneticsPackage where
  genotypeFrequencies : Type
  fitnessValues : Type
  hardyWeinbergEquilibrium : Prop
  selectionCoefficient : ℝ
  alleleFrequencyChange : Prop

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.hardyWeinbergEquilibrium ∧ P.alleleFrequencyChange

theorem population_genetics_endgame :
    ∀ (P : PopulationGeneticsPackage), PopulationGeneticsClosed P := by
  intro P
  exact And.intro P.hardyWeinbergEquilibrium P.alleleFrequencyChange

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse