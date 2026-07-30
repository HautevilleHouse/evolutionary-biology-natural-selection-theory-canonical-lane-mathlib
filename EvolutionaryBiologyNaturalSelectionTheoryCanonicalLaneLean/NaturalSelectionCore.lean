import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure NaturalSelectionCorePackage where
  fitness : Type u
  heritability : Prop
  selectionPressure : Prop
  adaptation : Prop

structure NaturalSelectionCoreEvidence (N : NaturalSelectionCorePackage) where
  heritabilityClosed : N.heritability
  selectionPressureClosed : N.selectionPressure
  adaptationClosed : N.adaptation

def NaturalSelectionCoreClosed (N : NaturalSelectionCorePackage) : Prop :=
  N.heritability ∧ N.selectionPressure ∧ N.adaptation

theorem natural_selection_core_closed_from_evidence (N : NaturalSelectionCorePackage)
    (E : NaturalSelectionCoreEvidence N) : NaturalSelectionCoreClosed N := by
  exact And.intro E.heritabilityClosed
    (And.intro E.selectionPressureClosed E.adaptationClosed)

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse