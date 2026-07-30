import EvolutionaryGamesCanonicalLaneLean.ReplicatorDynamics

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

def ConstrainedEvolutionaryGameClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_evolutionary_game_endgame (A : AdmissibleClass) :
    ConstrainedEvolutionaryGameClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse