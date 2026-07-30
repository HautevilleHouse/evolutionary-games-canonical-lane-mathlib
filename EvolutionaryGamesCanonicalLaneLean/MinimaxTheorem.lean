import EvolutionaryGamesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure MinimaxTheoremPackage where
  zeroSumGame : Type
  mixedStrategies : Type
  valueOfGame : Prop
  optimalStrategiesExist : Prop

structure MinimaxTheoremEvidence (M : MinimaxTheoremPackage) where
  valueOfGameClosed : M.valueOfGame
  optimalStrategiesExistClosed : M.optimalStrategiesExist

def MinimaxTheoremClosed (M : MinimaxTheoremPackage) : Prop :=
  M.valueOfGame ∧ M.optimalStrategiesExist

theorem minimax_theorem_closed_from_evidence (M : MinimaxTheoremPackage) (E : MinimaxTheoremEvidence M) :
    MinimaxTheoremClosed M := by
  exact And.intro E.valueOfGameClosed E.optimalStrategiesExistClosed

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse