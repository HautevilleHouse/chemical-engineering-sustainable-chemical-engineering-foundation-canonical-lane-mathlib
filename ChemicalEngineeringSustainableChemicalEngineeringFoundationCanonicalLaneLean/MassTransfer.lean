import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean

structure MassTransferPackage where
  ficksLaw : Prop
  diffusionCoefficient : Prop
  convectiveMassTransfer : Prop
  filmTheory : Prop
  overallMassTransferCoefficient : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  ficksLawClosed : M.ficksLaw
  diffusionCoefficientClosed : M.diffusionCoefficient
  convectiveMassTransferClosed : M.convectiveMassTransfer
  filmTheoryClosed : M.filmTheory
  overallMassTransferCoefficientClosed : M.overallMassTransferCoefficient

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.ficksLaw ∧ M.diffusionCoefficient ∧ M.convectiveMassTransfer ∧ M.filmTheory ∧ M.overallMassTransferCoefficient

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage) (E : MassTransferEvidence M) :
    MassTransferClosed M := by
  exact And.intro E.ficksLawClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.convectiveMassTransferClosed
        (And.intro E.filmTheoryClosed E.overallMassTransferCoefficientClosed)))

end ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean
end HautevilleHouse