import EvolutionaryGamesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure BargainingSolutionPackage where
  players : Nat
  disagreementPoint : Type
  feasibleSet : Type
  nashBargainingSolution : Prop
  kalaiSmorodinskySolution : Prop
  solutionExists : Prop

structure BargainingSolutionEvidence (B : BargainingSolutionPackage) where
  nashBargainingSolutionClosed : B.nashBargainingSolution
  kalaiSmorodinskySolutionClosed : B.kalaiSmorodinskySolution
  solutionExistsClosed : B.solutionExists

def BargainingSolutionClosed (B : BargainingSolutionPackage) : Prop :=
  B.nashBargainingSolution ∧ B.kalaiSmorodinskySolution ∧ B.solutionExists

theorem bargaining_solution_closed_from_evidence (B : BargainingSolutionPackage) (E : BargainingSolutionEvidence B) :
    BargainingSolutionClosed B := by
  exact And.intro E.nashBargainingSolutionClosed (And.intro E.kalaiSmorodinskySolutionClosed E.solutionExistsClosed)

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse