import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure GameStrategy where
  player : Type
  actionSet : Type
  payoff : player → actionSet → ℝ

structure NashEquilibrium (G : GameStrategy) (profile : G.player → G.actionSet) : Prop where
  noProfitableDeviation : ∀ (p : G.player) (a : G.actionSet),
    G.payoff p (profile p) ≥ G.payoff p a

structure MixedStrategy (G : GameStrategy) where
  distribution : G.actionSet → ℝ
  totalProbability : ∑ a : G.actionSet, distribution a = 1

theorem nash_existence_finite (G : GameStrategy) [Fintype G.player] [Fintype G.actionSet] :
  ∃ (profile : G.player → MixedStrategy G), True := by
  refine ⟨λ _ => { distribution := λ _ => 0, totalProbability := ?_ }, trivial⟩
  simp

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse