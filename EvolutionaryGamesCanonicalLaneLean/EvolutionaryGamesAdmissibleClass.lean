import EvolutionaryGamesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure AdmissibleClass where
  object : EvolutionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EvolutionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse
