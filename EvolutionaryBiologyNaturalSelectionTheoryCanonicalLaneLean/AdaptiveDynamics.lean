import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure AdaptiveDynamicsPackage where
  trait : Type u
  mutationStep : trait → trait → ℝ
  invasionFitness : trait → trait → ℝ
  evolutionaryBranching : Prop
  diversificationCondition : Prop
  evolutionarySingularity : Prop
  branchingClosed : Prop

structure AdaptiveDynamicsEvidence (A : AdaptiveDynamicsPackage) where
  branchingClosedTerm : A.branchingClosed

def AdaptiveDynamicsClosed (A : AdaptiveDynamicsPackage) : Prop :=
  A.branchingClosed

theorem adaptive_dynamics_closed_from_evidence (A : AdaptiveDynamicsPackage)
    (E : AdaptiveDynamicsEvidence A) : AdaptiveDynamicsClosed A := by
  exact E.branchingClosedTerm

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse