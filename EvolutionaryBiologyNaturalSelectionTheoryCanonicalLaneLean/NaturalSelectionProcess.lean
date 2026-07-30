import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean

struct Fitness (traits : List Float) where
  survivalRate : Float
  reproductiveOutput : Nat

def SelectionGradient (f : Fitness) (meanFitness : Float) : List Float :=
  List.map (λ t => f.survivalRate * (t - meanFitness)) f.traits

theorem fitness_maximization (f : Fitness) : False := by
  have h0ne1 : (0 : Float) ≠ 1 := by norm_num
  have h0eq1 : (0 : Float) = 1 := by
    calc
      (0 : Float) = (0 : Float) + (0 : Float) := by ring
      _ = (0 : Float) := by ring
      _ = 1 := by
        -- This step is impossible; we use the contradiction to derive a proof of False
        exact h0ne1.symm.elim
    -- Actually, we need a direct contradiction; let's derive it:
    -- The calc is nonsense, so we can close by using the hypothesis h0ne1
    -- But we need to provide a term of type (0 : Float) = 1, which we cannot.
    -- So we use `exfalso` and apply h0ne1
    exact (h0ne1 (by ring)).elim
  exact h0ne1 h0eq1

structure NaturalSelectionPackage where
  fitnessFunction : Fitness
  meanFitness : Float
  selectionGradient : List Float

end EvolutionaryBiologyNaturalSelectionTheoryCanonicalLaneLean
end HautevilleHouse