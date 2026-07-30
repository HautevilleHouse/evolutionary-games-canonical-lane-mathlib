import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure BargainingProblem where
  agents : Nat
  threatPoint : Rat -> Rat
  feasibleSet : Set (Rat -> Rat)
  nashSolution : (Rat -> Rat) -> Prop

structure NashBargainingEvidence (B : BargainingProblem) where
  nashSolutionExists : ∃ (x : Rat -> Rat), B.nashSolution x

def NashBargainingClosed (B : BargainingProblem) : Prop :=
  ∃ (x : Rat -> Rat), B.nashSolution x

theorem nash_bargaining_closed_from_evidence
    (B : BargainingProblem) (E : NashBargainingEvidence B) :
    NashBargainingClosed B := by
  exact E.nashSolutionExists

end HautevilleHouse
end EvolutionaryGamesCanonicalLaneLean