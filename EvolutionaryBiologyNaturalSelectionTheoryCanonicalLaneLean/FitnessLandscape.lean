import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure FitnessLandscapePackage where
  genotype : Type u
  fitness : genotype → ℝ
  mutationRate : genotype → genotype → ℝ
  stationaryDistribution : genotype → ℝ
  fitnessMaximization : Prop
  mutationSelectionBalance : Prop

structure FitnessLandscapeEvidence (F : FitnessLandscapePackage) where
  fitnessMaximizationClosed : F.fitnessMaximization
  mutationSelectionBalanceClosed : F.mutationSelectionBalance

def FitnessLandscapeClosed (F : FitnessLandscapePackage) : Prop :=
  F.fitnessMaximization ∧ F.mutationSelectionBalance

theorem fitness_landscape_closed_from_evidence (F : FitnessLandscapePackage)
    (E : FitnessLandscapeEvidence F) : FitnessLandscapeClosed F := by
  exact And.intro E.fitnessMaximizationClosed E.mutationSelectionBalanceClosed

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse