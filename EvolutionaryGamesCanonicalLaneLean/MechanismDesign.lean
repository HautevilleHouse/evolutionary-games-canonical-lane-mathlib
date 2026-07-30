import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryGamesCanonicalLaneLean

structure SocialChoiceFunction where
  agents : Type u
  alternatives : Type v
  preferences : Type w
  socialWelfare : Prop
  incentiveCompatibility : Prop
  incentiveCompatibilityTerm : incentiveCompatibility

structure AuctionMechanism where
  bidders : ℕ
  valuationProfile : Type u
  allocationRule : Type v
  paymentRule : Type w
  efficiency : Prop
  efficiencyTerm : efficiency

structure RevelationPrinciple where
  mechanism : Type u
  directMechanism : Type v
  equivalenceProof : Prop
  equivalenceProofTerm : equivalenceProof

end EvolutionaryGamesCanonicalLaneLean
end HautevilleHouse