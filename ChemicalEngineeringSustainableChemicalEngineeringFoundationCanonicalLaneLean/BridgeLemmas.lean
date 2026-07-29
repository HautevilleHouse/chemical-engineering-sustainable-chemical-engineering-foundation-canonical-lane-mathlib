import ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChemEngWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean
end HautevilleHouse