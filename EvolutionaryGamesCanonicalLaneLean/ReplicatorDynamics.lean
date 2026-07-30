import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure ReplicatorDynamicsPackage where
  populationState : Type u
  fitnessFunction : populationState -> populationState -> Prop
  growthEquation : Prop
  fixedPoints : Prop
  stabilityCondition : Prop

structure ReplicatorDynamicsEvidence (R : ReplicatorDynamicsPackage) where
  growthEquationClosed : R.growthEquation
  fixedPointsClosed : R.fixedPoints
  stabilityConditionClosed : R.stabilityCondition

def ReplicatorDynamicsClosed (R : ReplicatorDynamicsPackage) : Prop :=
  R.growthEquation ∧ R.fixedPoints ∧ R.stabilityCondition

theorem replicator_dynamics_closed_from_evidence (R : ReplicatorDynamicsPackage)
    (E : ReplicatorDynamicsEvidence R) : ReplicatorDynamicsClosed R := by
  exact And.intro E.growthEquationClosed
    (And.intro E.fixedPointsClosed E.stabilityConditionClosed)

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse
