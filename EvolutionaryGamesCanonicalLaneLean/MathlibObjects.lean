import canonicalLaneMathlib.TheoremStatement
import canonicalLaneMathlib

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlib

structure EvolutionaryGamesSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure EvolutionaryGamesAdmittedObject where
  gameSpace : EvolutionaryGamesSpace
  equilibriumExists : Prop
  solutionConcept : Prop
  concluded : Prop
  conclusion : concluded

structure EvolutionaryGamesEndgameState where
  object : EvolutionaryGamesAdmittedObject

def EvolutionaryGamesClosed (O : EvolutionaryGamesAdmittedObject) : Prop :=
  O.concluded

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse