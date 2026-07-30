import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure EvolutionaryGameState where
  carrier : Type
  topology : TopologicalSpace carrier

structure EvolutionaryAdmittedObject where
  space : EvolutionaryGameState
  nashEquilibrium : Prop
  mixedStrategies : Prop
  conclusion : nashEquilibrium

def EvolutionaryWitnessClosed (O : EvolutionaryAdmittedObject) : Prop :=
  O.nashEquilibrium

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse
