import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

def NaturalSelectionAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem natural_selection_admissible_endgame (A : AdmissibleClass) :
    NaturalSelectionAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse