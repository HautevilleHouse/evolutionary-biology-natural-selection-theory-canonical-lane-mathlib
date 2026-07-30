import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure PopulationDynamicsPackage where
  populationSize : Type u
  growthRate : Type v
  carryingCapacity : Prop
  logisticEquation : Prop
  equilibriumStability : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  carryingCapacityClosed : P.carryingCapacity
  logisticEquationClosed : P.logisticEquation
  equilibriumStabilityClosed : P.equilibriumStability

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.carryingCapacity ∧ P.logisticEquation ∧ P.equilibriumStability

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.carryingCapacityClosed
    (And.intro E.logisticEquationClosed E.equilibriumStabilityClosed)

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse