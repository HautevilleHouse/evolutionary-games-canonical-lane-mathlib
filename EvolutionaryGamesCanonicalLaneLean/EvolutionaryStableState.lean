import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure SymmetricGame where
  strategySet : Type
  payoff : strategySet → strategySet → ℝ

structure EvolutionaryStableStrategy (G : SymmetricGame) (σ : MixedStrategy G.strategySet) : Prop where
  equilibrium : ∀ τ ≠ σ, G.payoff σ σ ≥ G.payoff τ σ
  stability : ∀ τ ≠ σ, G.payoff σ σ = G.payoff τ σ → G.payoff σ τ > G.payoff τ τ

theorem ess_implies_nash (G : SymmetricGame) (σ : MixedStrategy G.strategySet) (hESS : EvolutionaryStableStrategy G σ) :
  ∀ τ, G.payoff σ σ ≥ G.payoff τ σ := by
  intro τ
  exact hESS.equilibrium τ (by
    intro h_eq
    -- derive contradiction if τ ≠ σ but payoff equal? Actually equilibrium condition holds for all τ
    exact h_eq)

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse