import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure GameAdmittedObject where
  profile : NashEquilibriumProfile
  ess : EvolutionaryStableStrategy
  dynamics : ReplicatorDynamics
  bargaining : BargainingProblem
  mechanism : Mechanism

structure AdmissibleClass where
  object : GameAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∀ s, A.object.profile.bestResponseEach s ∧ A.object.profile.mutualBestResponse s) ∧
  A.object.ess.stabilityCondition ∧
  A.object.dynamics.stabilityOfFixedPoints ∧
  (∃ x, A.object.bargaining.nashSolution x) ∧
  A.object.mechanism.incentiveCompatible

end HautevilleHouse
end EvolutionaryGamesCanonicalLaneLean