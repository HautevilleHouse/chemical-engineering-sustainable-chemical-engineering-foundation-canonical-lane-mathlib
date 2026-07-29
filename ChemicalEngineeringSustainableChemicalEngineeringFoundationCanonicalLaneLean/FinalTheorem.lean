import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean

def ConstrainedSustainableChemicalEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sustainable_chemical_engineering_endgame (A : AdmissibleClass) :
    ConstrainedSustainableChemicalEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean
end HautevilleHouse