import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

structure AdaptiveLandscapePackage where
  fitnessFunction : ℝ → ℝ
  localOptima : List ℝ
  peakShift : Prop
  ruggedness : Prop
  epistasis : Prop

structure AdaptiveLandscapeEvidence (A : AdaptiveLandscapePackage) where
  peakShiftClosed : A.peakShift
  ruggednessClosed : A.ruggedness
  epistasisClosed : A.epistasis

def AdaptiveLandscapeClosed (A : AdaptiveLandscapePackage) : Prop :=
  A.peakShift ∧ A.ruggedness ∧ A.epistasis

theorem adaptive_landscape_closed_from_evidence (A : AdaptiveLandscapePackage)
    (E : AdaptiveLandscapeEvidence A) : AdaptiveLandscapeClosed A :=
  And.intro E.peakShiftClosed (And.intro E.ruggednessClosed E.epistasisClosed)

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse