import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

def ConstrainedEvolutionaryGameClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem evolutionary_games_endgame (A : AdmissibleClass) :
  ConstrainedEvolutionaryGameClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse