import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure NashEquilibrium where
  playerSet : Type u
  strategyProfiles : Type v
  payoffFunctions : Type w
  bestResponseCondition : Prop
  existenceAssured : Prop
  existenceTerm : existenceAssured

structure MinimaxTheorem where
  zeroSumGame : Type u
  maxmin : Prop
  minmax : Prop
  equalityHolds : Prop
  equalityTerm : equalityHolds

structure BargainingSolution where
  players : Type u
  disagreementPoint : Type v
  feasibleSet : Type w
  axioms : Prop
  uniqueness : Prop
  uniquenessTerm : uniqueness

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse