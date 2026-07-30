import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure PhylogeneticInferencePackage where
  taxa : Type u
  sequenceData : taxa → String
  substitutionModel : taxa → taxa → ℝ
  treeTopology : Type u
  likelihoodFunction : treeTopology → ℝ
  maximumLikelihoodTree : treeTopology → Prop
  bootstrapSupport : Prop

structure PhylogeneticInferenceEvidence (P : PhylogeneticInferencePackage) where
  maximumLikelihoodTreeClosed : P.maximumLikelihoodTree
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticInferenceClosed (P : PhylogeneticInferencePackage) : Prop :=
  P.maximumLikelihoodTree ∧ P.bootstrapSupport

theorem phylogenetic_inference_closed_from_evidence
    (P : PhylogeneticInferencePackage) (E : PhylogeneticInferenceEvidence P) :
    PhylogeneticInferenceClosed P := by
  exact And.intro E.maximumLikelihoodTreeClosed E.bootstrapSupportClosed

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse