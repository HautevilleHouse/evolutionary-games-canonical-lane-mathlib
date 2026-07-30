import EvolutionaryGamesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure NashEquilibriumPackage where
  strategySpace : Type u
  payoffFunctions : strategySpace → strategySpace → ℝ
  nashEquilibrium : strategySpace → Prop
  existenceTheorem : Prop
  uniquenessCondition : Prop

structure NashEquilibriumEvidence (N : NashEquilibriumPackage) where
  existenceClosed : N.existenceTheorem
  uniquenessConditionClosed : N.uniquenessCondition

def NashEquilibriumClosed (N : NashEquilibriumPackage) : Prop :=
  N.existenceTheorem ∧ N.uniquenessCondition

theorem nash_equilibrium_closed_from_evidence (N : NashEquilibriumPackage) (E : NashEquilibriumEvidence N) : NashEquilibriumClosed N := by
  exact And.intro E.existenceClosed E.uniquenessConditionClosed

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse
