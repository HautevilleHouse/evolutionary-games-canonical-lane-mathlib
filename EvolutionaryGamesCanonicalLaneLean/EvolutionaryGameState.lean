import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure EvolutionaryGameState where
  playerSet : Type u
  strategySpace : playerSet -> Type v
  payoffFunction : (p : playerSet) -> strategySpace p -> ℝ
  evolutionDynamics : Prop
  equilibriumConcept : Prop

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse