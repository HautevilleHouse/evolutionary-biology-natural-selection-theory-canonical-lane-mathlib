import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure EcoEvolutionaryDynamicsPackage where
  ecologicalInteractions : Type u
  evolutionaryFeedbacks : Prop
  nicheConstruction : Prop
  coevolution : Prop
  adaptiveDynamics : Prop

structure EcoEvolutionaryDynamicsEvidence (E : EcoEvolutionaryDynamicsPackage) where
  evolutionaryFeedbacksClosed : E.evolutionaryFeedbacks
  nicheConstructionClosed : E.nicheConstruction
  coevolutionClosed : E.coevolution
  adaptiveDynamicsClosed : E.adaptiveDynamics

def EcoEvolutionaryDynamicsClosed (E : EcoEvolutionaryDynamicsPackage) : Prop :=
  E.evolutionaryFeedbacks ∧ E.nicheConstruction ∧ E.coevolution ∧ E.adaptiveDynamics

theorem eco_evolutionary_dynamics_closed_from_evidence (E : EcoEvolutionaryDynamicsPackage)
    (Ev : EcoEvolutionaryDynamicsEvidence E) : EcoEvolutionaryDynamicsClosed E :=
  And.intro Ev.evolutionaryFeedbacksClosed
    (And.intro Ev.nicheConstructionClosed
      (And.intro Ev.coevolutionClosed Ev.adaptiveDynamicsClosed))

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse