import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure RepeatedGamesPackage where
  stageGame : Type u
  discountFactor : Prop
  historySpace : Type v
  triggerStrategy : Prop
  folkTheoremSet : Prop
  subgamePerfectEquilibrium : Prop

structure RepeatedGamesEvidence (R : RepeatedGamesPackage) where
  discountFactorClosed : R.discountFactor
  triggerStrategyClosed : R.triggerStrategy
  folkTheoremSetClosed : R.folkTheoremSet
  subgamePerfectEquilibriumClosed : R.subgamePerfectEquilibrium

def RepeatedGamesClosed (R : RepeatedGamesPackage) : Prop :=
  R.discountFactor ∧ R.triggerStrategy ∧ R.folkTheoremSet ∧ R.subgamePerfectEquilibrium

theorem repeated_games_closed_from_evidence (R : RepeatedGamesPackage)
    (Ev : RepeatedGamesEvidence R) : RepeatedGamesClosed R := by
  exact And.intro Ev.discountFactorClosed
    (And.intro Ev.triggerStrategyClosed
      (And.intro Ev.folkTheoremSetClosed Ev.subgamePerfectEquilibriumClosed))

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse