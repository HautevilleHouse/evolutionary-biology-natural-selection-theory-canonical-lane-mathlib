import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure NeutralTheoryPackage where
  mutationRate : ℝ
  effectivePopulationSize : ℕ
  molecularClock : Prop
  coalescentProcess : Prop
  geneticDrift : Prop

structure NeutralTheoryEvidence (N : NeutralTheoryPackage) where
  molecularClockClosed : N.molecularClock
  coalescentProcessClosed : N.coalescentProcess
  geneticDriftClosed : N.geneticDrift

def NeutralTheoryClosed (N : NeutralTheoryPackage) : Prop :=
  N.molecularClock ∧ N.coalescentProcess ∧ N.geneticDrift

theorem neutral_theory_closed_from_evidence (N : NeutralTheoryPackage)
    (E : NeutralTheoryEvidence N) : NeutralTheoryClosed N :=
  And.intro E.molecularClockClosed (And.intro E.coalescentProcessClosed E.geneticDriftClosed)

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse