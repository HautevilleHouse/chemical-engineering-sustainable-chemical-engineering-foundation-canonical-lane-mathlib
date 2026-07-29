import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  equilibriumConstant : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.temperatureDependence ∧ R.equilibriumConstant

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.temperatureDependenceClosed E.equilibriumConstantClosed))

end ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
