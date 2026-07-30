import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure EvolutionaryStabilityPackage where
  populationStateSpace : Type u
  replicatorDynamics : Type v
  evolutionaryStableStrategy : Prop
  asymptoticStability : Prop
  invasionBarrier : Prop

structure EvolutionaryStabilityEvidence (E : EvolutionaryStabilityPackage) where
  evolutionaryStableStrategyClosed : E.evolutionaryStableStrategy
  asymptoticStabilityClosed : E.asymptoticStability
  invasionBarrierClosed : E.invasionBarrier

def EvolutionaryStabilityClosed (E : EvolutionaryStabilityPackage) : Prop :=
  E.evolutionaryStableStrategy ∧ E.asymptoticStability ∧ E.invasionBarrier

theorem evolutionary_stability_closed_from_evidence (E : EvolutionaryStabilityPackage)
    (Ev : EvolutionaryStabilityEvidence E) : EvolutionaryStabilityClosed E := by
  exact And.intro Ev.evolutionaryStableStrategyClosed
    (And.intro Ev.asymptoticStabilityClosed Ev.invasionBarrierClosed)

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse