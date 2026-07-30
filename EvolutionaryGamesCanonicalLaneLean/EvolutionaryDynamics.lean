import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure ReplicatorDynamics where
  populationState : Type u
  fitnessFunction : Type v
  dynamicEquation : Prop
  stationaryPoints : Prop
  stabilityAnalysis : Prop
  stationaryPointsTerm : stationaryPoints
  stabilityAnalysisTerm : stabilityAnalysis

structure ESS (D : ReplicatorDynamics) where
  strategy : D.populationState
  invasionCondition : Prop
  stabilityCondition : Prop
  isESS : Prop
  isESSTerm : isESS

structure MutationSelection where
  mutationRate : ℝ
  selectionPressure : ℝ
  mutationSelectionDynamics : Prop
  equilibriumStability : Prop
  equilibriumStabilityTerm : equilibriumStability

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse