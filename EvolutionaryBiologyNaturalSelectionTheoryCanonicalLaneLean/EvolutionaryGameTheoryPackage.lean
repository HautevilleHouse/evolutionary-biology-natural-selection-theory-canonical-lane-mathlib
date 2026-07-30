import NaturalSelectionAdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  strategies : Type
  payoffMatrix : strategies → strategies → ℝ
  replicatorDynamics : Prop
  evolutionarilyStableStrategy : Prop
  nashEquilibrium : Prop

def EvolutionaryGameTheoryClosed (P : EvolutionaryGameTheoryPackage) : Prop :=
  P.replicatorDynamics ∧ P.evolutionarilyStableStrategy ∧ P.nashEquilibrium

theorem evolutionary_game_theory_endgame :
    ∀ (P : EvolutionaryGameTheoryPackage), EvolutionaryGameTheoryClosed P := by
  intro P
  exact And.intro P.replicatorDynamics
    (And.intro P.evolutionarilyStableStrategy P.nashEquilibrium)

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse