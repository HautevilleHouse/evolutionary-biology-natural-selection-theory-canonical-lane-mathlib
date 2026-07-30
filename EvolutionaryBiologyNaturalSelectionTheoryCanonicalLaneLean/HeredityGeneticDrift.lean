import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure HeredityGeneticDriftPackage where
  alleleFrequencies : Type u → Float
  populationSize : Nat
  wrightFisherModel : Prop
  fixationProbability : Float → Prop
  effectivePopulationSize : Prop

structure HeredityGeneticDriftEvidence (H : HeredityGeneticDriftPackage) where
  wrightFisherModelClosed : H.wrightFisherModel
  fixationProbabilityClosed : ∀ p, H.fixationProbability p
  effectivePopulationSizeClosed : H.effectivePopulationSize

def HeredityGeneticDriftClosed (H : HeredityGeneticDriftPackage) : Prop :=
  H.wrightFisherModel ∧ (∀ p, H.fixationProbability p) ∧ H.effectivePopulationSize

theorem heredity_genetic_drift_closed_from_evidence (H : HeredityGeneticDriftPackage) (E : HeredityGeneticDriftEvidence H) :
    HeredityGeneticDriftClosed H := by
  exact And.intro E.wrightFisherModelClosed (And.intro E.fixationProbabilityClosed E.effectivePopulationSizeClosed)

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse