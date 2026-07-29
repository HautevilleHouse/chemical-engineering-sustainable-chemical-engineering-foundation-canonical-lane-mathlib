import ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ChemEngAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChemEngWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean
end HautevilleHouse