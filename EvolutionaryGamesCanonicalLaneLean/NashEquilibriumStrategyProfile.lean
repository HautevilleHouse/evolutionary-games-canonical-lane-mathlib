import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure NashEquilibriumProfile where
  players : Nat
  strategySets : List (Set (Nat -> Nat))
  payoffFunctions : List (Nat -> Nat -> Rat)
  bestResponseEach : (Nat -> Nat) -> Prop
  mutualBestResponse : (Nat -> Nat) -> Prop

structure NashEquilibriumEvidence (P : NashEquilibriumProfile) where
  bestResponseEachClosed : ∀ (s : Nat -> Nat), P.bestResponseEach s
  mutualBestResponseClosed : ∀ (s : Nat -> Nat), P.mutualBestResponse s

def NashEquilibriumClosed (P : NashEquilibriumProfile) : Prop :=
  ∀ (s : Nat -> Nat), P.bestResponseEach s ∧ P.mutualBestResponse s

theorem nash_equilibrium_closed_from_evidence
    (P : NashEquilibriumProfile) (E : NashEquilibriumEvidence P) :
    NashEquilibriumClosed P := by
  intro s
  exact And.intro (E.bestResponseEachClosed s) (E.mutualBestResponseClosed s)

end HautevilleHouse
end EvolutionaryGamesCanonicalLaneLean