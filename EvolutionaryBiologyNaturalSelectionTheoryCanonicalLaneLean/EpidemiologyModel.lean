import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure CompartmentModel where
  susceptible : Float
  infected : Float
  recovered : Float
  transmissionRate : Float
  recoveryRate : Float

define SIRDerivatives (m : CompartmentModel) : CompartmentModel :=
  { susceptible := -m.transmissionRate * m.susceptible * m.infected,
    infected := m.transmissionRate * m.susceptible * m.infected - m.recoveryRate * m.infected,
    recovered := m.recoveryRate * m.infected,
    transmissionRate := 0,
    recoveryRate := 0
  }

theorem equilibrium_condition (m : CompartmentModel) : Prop := m.infected = 0

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse