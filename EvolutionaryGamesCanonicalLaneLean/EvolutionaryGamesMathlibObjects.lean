import EvolutionaryGamesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EvolutionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EvolutionAdmittedObject where
  space : EvolutionSpace
  nashEquilibriumExists : Prop
  evolutionaryStability : Prop
  outcomeModel : Type
  outcomeTopology : TopologicalSpace outcomeModel
  stableOutcome : Prop
  conclusion : stableOutcome

structure EvolutionEndgameState where
  object : EvolutionAdmittedObject

def EvolutionWitnessClosed (O : EvolutionAdmittedObject) : Prop :=
  O.stableOutcome

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse
