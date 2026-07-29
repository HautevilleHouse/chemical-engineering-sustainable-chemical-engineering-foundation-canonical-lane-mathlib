import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  waveFunction : Prop
  orbitalEnergies : Prop
  bondOrder : Prop
  frontierOrbitalTheory : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  waveFunctionClosed : M.waveFunction
  orbitalEnergiesClosed : M.orbitalEnergies
  bondOrderClosed : M.bondOrder
  frontierOrbitalTheoryClosed : M.frontierOrbitalTheory

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.waveFunction ∧ M.orbitalEnergies ∧ M.bondOrder ∧ M.frontierOrbitalTheory

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage)
    (E : MolecularOrbitalTheoryEvidence M) : MolecularOrbitalTheoryClosed M := by
  exact And.intro E.waveFunctionClosed
    (And.intro E.orbitalEnergiesClosed
      (And.intro E.bondOrderClosed E.frontierOrbitalTheoryClosed))

end ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
