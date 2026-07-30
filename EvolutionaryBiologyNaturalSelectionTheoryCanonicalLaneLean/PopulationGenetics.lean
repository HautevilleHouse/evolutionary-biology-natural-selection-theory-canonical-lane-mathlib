import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure AlleleFrequencies where
  freqA : Float
  freqB : Float

structure HardyWeinbergEquilibrium where
  expectedGenotypeFrequencies : AlleleFrequencies -> (Float * Float * Float)
  observedFit : Bool

define HardyWeinbergCalculation (p q : Float) : (Float * Float * Float) :=
  (p*p, 2*p*q, q*q)

theorem hardy_weinberg_closed (p q : Float) : p + q = 1 := by
  intro h
  exact h

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse