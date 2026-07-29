import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstantExpression : Prop
  leChateliersPrinciple : Prop
  reactionQuotient : Prop
  gibbsFreeEnergyChange : Prop
  temperatureDependence : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantExpressionClosed : C.equilibriumConstantExpression
  leChateliersPrincipleClosed : C.leChateliersPrinciple
  reactionQuotientClosed : C.reactionQuotient
  gibbsFreeEnergyChangeClosed : C.gibbsFreeEnergyChange
  temperatureDependenceClosed : C.temperatureDependence

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstantExpression ∧ C.leChateliersPrinciple ∧ C.reactionQuotient ∧ C.gibbsFreeEnergyChange ∧ C.temperatureDependence

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantExpressionClosed
    (And.intro E.leChateliersPrincipleClosed
      (And.intro E.reactionQuotientClosed
        (And.intro E.gibbsFreeEnergyChangeClosed E.temperatureDependenceClosed)))

end ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean
end HautevilleHouse