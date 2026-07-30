import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EvolutionaryGamesCanonicalLaneLean.NashEquilibriumStrategyProfile

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure EvolutionaryStableStrategy where
  strategy : Nat -> Rat
  population : Nat -> Rat
  fitnessAgainst : (Nat -> Rat) -> (Nat -> Rat) -> Rat
  stabilityCondition : Prop

structure ESSEvidence (ESS : EvolutionaryStableStrategy) where
  stabilityConditionClosed : ESS.stabilityCondition

def ESSClosed (ESS : EvolutionaryStableStrategy) : Prop :=
  ESS.stabilityCondition

theorem ess_closed_from_evidence
    (ESS : EvolutionaryStableStrategy) (E : ESSEvidence ESS) :
    ESSClosed ESS := by
  exact E.stabilityConditionClosed

end HautevilleHouse
end EvolutionaryGamesCanonicalLaneLean