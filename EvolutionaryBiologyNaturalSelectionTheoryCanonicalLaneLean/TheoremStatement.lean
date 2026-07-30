import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure NaturalSelectionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedNaturalSelectionObject where
  space : NaturalSelectionSpace
  populationDynamicsClosed : Prop
  fitnessLandscapeConverges : Prop
  selectionEquilibriumReached : Prop
  conclusion : selectionEquilibriumReached

structure NaturalSelectionEndgameState where
  object : AdmittedNaturalSelectionObject

def NaturalSelectionWitnessClosed (O : AdmittedNaturalSelectionObject) : Prop :=
  O.selectionEquilibriumReached

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse
