import EvolutionaryGamesCanonicalLaneLean.MechanismDesign

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure BargainingSolutionPackage {N : NashEquilibriumPackage} {D : EvolutionaryDynamicsPackage N} {M : MechanismDesignPackage N D} where
  bargainingSet : Type
  nashSolution : bargainingSet → bargainingSet
  kalaiSmorodinskySolution : bargainingSet → bargainingSet
  uniquenessAxioms : Prop

structure BargainingSolutionEvidence {N : NashEquilibriumPackage} {D : EvolutionaryDynamicsPackage N} {M : MechanismDesignPackage N D} (B : BargainingSolutionPackage N D M) where
  uniquenessAxiomsClosed : B.uniquenessAxioms

def BargainingSolutionClosed {N : NashEquilibriumPackage} {D : EvolutionaryDynamicsPackage N} {M : MechanismDesignPackage N D} (B : BargainingSolutionPackage N D M) : Prop :=
  B.uniquenessAxioms

theorem bargaining_solution_closed_from_evidence {N : NashEquilibriumPackage} {D : EvolutionaryDynamicsPackage N} {M : MechanismDesignPackage N D} (B : BargainingSolutionPackage N D M) (E : BargainingSolutionEvidence B) : BargainingSolutionClosed B := by
  exact E.uniquenessAxiomsClosed

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse
