import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure NeutralTheoryPackage where
  molecularClock : Type u
  neutralMutations : Prop
  speciationRate : Prop
  closed : Prop

def NeutralTheoryClosed (N : NeutralTheoryPackage) : Prop :=
  N.neutralMutations ∧ N.speciationRate

theorem neutral_theory_closed (N : NeutralTheoryPackage) :
    NeutralTheoryClosed N := by
  exact And.intro N.neutralMutations N.speciationRate

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse