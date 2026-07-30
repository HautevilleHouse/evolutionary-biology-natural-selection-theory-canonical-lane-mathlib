import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure PopulationGeneticsLandscapePackage where
  fitnessLandscape : Type u
  alleleFrequencies : Type v
  selectionDynamics : Prop
  mutationRateConstrained : Prop
  closed : Prop

def PopulationGeneticsLandscapeClosed (P : PopulationGeneticsLandscapePackage) : Prop :=
  P.selectionDynamics ∧ P.mutationRateConstrained

theorem population_genetics_landscape_closed (P : PopulationGeneticsLandscapePackage) :
    PopulationGeneticsLandscapeClosed P := by
  exact And.intro P.selectionDynamics P.mutationRateConstrained

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse