import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  payoffMatrix : Type u
  replicatorDynamics : Type v
  evolutionaryStableStrategy : Prop
  nashEquilibrium : Prop

structure EvolutionaryGameTheoryEvidence (E : EvolutionaryGameTheoryPackage) where
  evolutionaryStableStrategyClosed : E.evolutionaryStableStrategy
  nashEquilibriumClosed : E.nashEquilibrium

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.evolutionaryStableStrategy ∧ E.nashEquilibrium

theorem evolutionary_game_theory_closed_from_evidence (E : EvolutionaryGameTheoryPackage)
    (Ev : EvolutionaryGameTheoryEvidence E) : EvolutionaryGameTheoryClosed E := by
  exact And.intro Ev.evolutionaryStableStrategyClosed Ev.nashEquilibriumClosed

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse