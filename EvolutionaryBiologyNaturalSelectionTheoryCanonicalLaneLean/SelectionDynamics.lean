import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure SelectionDynamicsPackage where
  fitness : Type u
  selectionCoefficient : ℝ → ℝ
  alleleFrequencies : List ℝ
  hardyWeinbergEquilibrium : Prop
  fisherTheorem : Prop
  mutationPressure : Prop

structure SelectionDynamicsEvidence (S : SelectionDynamicsPackage) where
  hardyWeinbergEquilibriumClosed : S.hardyWeinbergEquilibrium
  fisherTheoremClosed : S.fisherTheorem
  mutationPressureClosed : S.mutationPressure

def SelectionDynamicsClosed (S : SelectionDynamicsPackage) : Prop :=
  S.hardyWeinbergEquilibrium ∧ S.fisherTheorem ∧ S.mutationPressure

theorem selection_dynamics_closed_from_evidence (S : SelectionDynamicsPackage)
    (E : SelectionDynamicsEvidence S) : SelectionDynamicsClosed S :=
  And.intro E.hardyWeinbergEquilibriumClosed
    (And.intro E.fisherTheoremClosed E.mutationPressureClosed)

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse