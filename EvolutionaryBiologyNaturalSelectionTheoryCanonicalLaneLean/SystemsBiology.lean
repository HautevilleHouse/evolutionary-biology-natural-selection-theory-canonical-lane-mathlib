import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure SystemsBiologyPackage where
  geneRegulatoryNetwork : Prop
  metabolicPathway : Prop
  signalTransduction : Prop
  robustness : Prop
  evolvability : Prop

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  geneRegulatoryNetworkClosed : S.geneRegulatoryNetwork
  metabolicPathwayClosed : S.metabolicPathway
  signalTransductionClosed : S.signalTransduction
  robustnessClosed : S.robustness
  evolvabilityClosed : S.evolvability

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.geneRegulatoryNetwork ∧ S.metabolicPathway ∧ S.signalTransduction ∧ S.robustness ∧ S.evolvability

theorem systems_biology_closed_from_evidence (S : SystemsBiologyPackage)
    (E : SystemsBiologyEvidence S) : SystemsBiologyClosed S := by
  exact And.intro E.geneRegulatoryNetworkClosed
    (And.intro E.metabolicPathwayClosed
      (And.intro E.signalTransductionClosed
        (And.intro E.robustnessClosed E.evolvabilityClosed)))

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse