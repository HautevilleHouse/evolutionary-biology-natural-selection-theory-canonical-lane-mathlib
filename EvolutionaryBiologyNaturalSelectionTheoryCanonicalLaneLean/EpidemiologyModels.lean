import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure EpidemiologyPackage where
  susceptible : Type u
  infected : Type u
  recovered : Type u
  transmissionRate : Float
  recoveryRate : Float
  sirEquations : Prop
  basicReproductiveNumber : Float

structure EpidemiologyEvidence (E : EpidemiologyPackage) where
  sirEquationsClosed : E.sirEquations
  basicReproductiveNumberClosed : E.basicReproductiveNumber > 0

def EpidemiologyClosed (E : EpidemiologyPackage) : Prop :=
  E.sirEquations ∧ (E.basicReproductiveNumber > 0)

theorem epidemiology_closed_from_evidence (E : EpidemiologyPackage) (Ev : EpidemiologyEvidence E) :
    EpidemiologyClosed E := by
  exact And.intro Ev.sirEquationsClosed Ev.basicReproductiveNumberClosed

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse