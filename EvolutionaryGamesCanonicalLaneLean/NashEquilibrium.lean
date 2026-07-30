import EvolutionaryGamesCanonicalLaneLean.EvolutionaryGameState

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure NashEquilibriumPackage (G : EvolutionaryGameState) where
  equilibriumProfile : (p : G.playerSet) -> G.strategySpace p
  bestResponseCondition : Prop
  existenceProof : Prop

structure NashEquilibriumEvidence {G : EvolutionaryGameState} (N : NashEquilibriumPackage G) where
  bestResponseConditionClosed : N.bestResponseCondition
  existenceProofClosed : N.existenceProof

def NashEquilibriumClosed {G : EvolutionaryGameState} (N : NashEquilibriumPackage G) : Prop :=
  N.bestResponseCondition ∧ N.existenceProof

theorem nash_equilibrium_closed_from_evidence
    {G : EvolutionaryGameState} (N : NashEquilibriumPackage G)
    (E : NashEquilibriumEvidence N) : NashEquilibriumClosed N := by
  exact And.intro E.bestResponseConditionClosed E.existenceProofClosed

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse