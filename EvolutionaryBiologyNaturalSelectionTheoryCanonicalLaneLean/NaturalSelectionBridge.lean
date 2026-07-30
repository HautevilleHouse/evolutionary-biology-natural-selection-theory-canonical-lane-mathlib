import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean.PopulationDynamics
import HautevilleHouse.EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean.EvolutionaryGameTheory
import HautevilleHouse.EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean.EpidemiologyModels
import HautevilleHouse.EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean.HeredityGeneticDrift

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure NaturalSelectionAdmittedObject where
  populationDynamics : PopulationDynamicsPackage
  gameTheory : EvolutionaryGamePackage
  epidemiology : EpidemiologyPackage
  heredity : HeredityGeneticDriftPackage
  populationDynamicsClosed : PopulationDynamicsClosed populationDynamics
  gameTheoryClosed : EvolutionaryGameClosed gameTheory
  epidemiologyClosed : EpidemiologyClosed epidemiology
  heredityClosed : HeredityGeneticDriftClosed heredity
  conclusion : populationDynamicsClosed ∧ gameTheoryClosed ∧ epidemiologyClosed ∧ heredityClosed

structure NaturalSelectionAdmissibleClass where
  object : NaturalSelectionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def NaturalSelectionWitnessClosed (O : NaturalSelectionAdmittedObject) : Prop :=
  O.populationDynamicsClosed ∧ O.gameTheoryClosed ∧ O.epidemiologyClosed ∧ O.heredityClosed

theorem natural_selection_witness_closed_from_object (O : NaturalSelectionAdmittedObject) :
    NaturalSelectionWitnessClosed O := by
  exact O.conclusion

def bridgeClosed (A : NaturalSelectionAdmissibleClass) : Prop :=
  NaturalSelectionWitnessClosed A.object

theorem bridge_from_admissible_class (A : NaturalSelectionAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : NaturalSelectionAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : NaturalSelectionAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse