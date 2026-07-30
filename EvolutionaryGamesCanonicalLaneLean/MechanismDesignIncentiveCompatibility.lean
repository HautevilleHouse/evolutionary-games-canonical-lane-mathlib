import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EvolutionaryGamesCanonicalLaneLean.BargainingSolutionNash

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure Mechanism where
  typeSpace : Set (Nat -> Rat)
  allocationRule : (Nat -> Rat) -> Nat -> Rat
  transferRule : (Nat -> Rat) -> (Nat -> Rat) -> Rat
  incentiveCompatible : Prop

structure MechanismDesignEvidence (M : Mechanism) where
  incentiveCompatibleClosed : M.incentiveCompatible

def MechanismDesignClosed (M : Mechanism) : Prop :=
  M.incentiveCompatible

theorem mechanism_design_closed_from_evidence
    (M : Mechanism) (E : MechanismDesignEvidence M) :
    MechanismDesignClosed M := by
  exact E.incentiveCompatibleClosed

end HautevilleHouse
end EvolutionaryGamesCanonicalLaneLean