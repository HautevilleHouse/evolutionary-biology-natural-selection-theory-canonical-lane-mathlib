import NaturalSelectionAdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure EpidemiologicalModelPackage where
  compartments : Type
  transmissionRate : ℝ
  recoveryRate : ℝ
  basicReproductionNumber : ℝ
  diseaseFreeEquilibriumStability : Prop

def EpidemiologicalModelClosed (P : EpidemiologicalModelPackage) : Prop :=
  P.basicReproductionNumber > 0 ∧ P.diseaseFreeEquilibriumStability

theorem epidemiological_model_endgame :
    ∀ (P : EpidemiologicalModelPackage), EpidemiologicalModelClosed P := by
  intro P
  unfold EpidemiologicalModelClosed
  constructor
  · linarith
  · exact P.diseaseFreeEquilibriumStability

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse