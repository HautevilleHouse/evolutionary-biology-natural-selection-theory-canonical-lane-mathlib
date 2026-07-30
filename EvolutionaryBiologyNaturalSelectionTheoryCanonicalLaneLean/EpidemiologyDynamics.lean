import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure EpidemiologyDynamicsPackage where
  compartmentModel : Type u
  transmissionRate : Prop
  reproductionNumberEndemic : Prop
  closed : Prop

def EpidemiologyDynamicsClosed (E : EpidemiologyDynamicsPackage) : Prop :=
  E.transmissionRate ∧ E.reproductionNumberEndemic

theorem epidemiology_dynamics_closed (E : EpidemiologyDynamicsPackage) :
    EpidemiologyDynamicsClosed E := by
  exact And.intro E.transmissionRate E.reproductionNumberEndemic

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse