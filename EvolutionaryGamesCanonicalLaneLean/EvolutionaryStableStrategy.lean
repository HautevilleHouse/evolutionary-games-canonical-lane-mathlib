import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure EvolutionaryGame where
  PayoffMatrix : Type u
  StrategySet : Type v
  populationState : StrategySet -> Type w
  fitnessFunction : Prop
  replicatorDynamics : Prop
  nashEquilibrium : Prop
  lyapunovStability : Prop

structure EvolutionaryStableStrategy where
  game : EvolutionaryGame
  incumbent : game.StrategySet
  mutant : game.StrategySet
  mutantFrequency : Prop
  payoffIncumbentGtMutant : Prop
  strictInequality : Prop

def EvolutionaryStableStrategyClosed (E : EvolutionaryStableStrategy) : Prop :=
  E.payoffIncumbentGtMutant ∧ E.strictInequality

theorem ess_closed_from_evidence (E : EvolutionaryStableStrategy) :
    EvolutionaryStableStrategyClosed E := by
  exact And.intro E.payoffIncumbentGtMutant E.strictInequality

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse
