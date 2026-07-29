import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean

structure ReactorDesignPackage where
  batchReactor : Prop
  continuousStirredTank : Prop
  plugFlowReactor : Prop
  residenceTimeDistribution : Prop
  energyBalance : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  batchReactorClosed : R.batchReactor
  continuousStirredTankClosed : R.continuousStirredTank
  plugFlowReactorClosed : R.plugFlowReactor
  residenceTimeDistributionClosed : R.residenceTimeDistribution
  energyBalanceClosed : R.energyBalance

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.batchReactor ∧ R.continuousStirredTank ∧ R.plugFlowReactor ∧ R.residenceTimeDistribution ∧ R.energyBalance

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage) (E : ReactorDesignEvidence R) :
    ReactorDesignClosed R := by
  exact And.intro E.batchReactorClosed
    (And.intro E.continuousStirredTankClosed
      (And.intro E.plugFlowReactorClosed
        (And.intro E.residenceTimeDistributionClosed E.energyBalanceClosed)))

end ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean
end HautevilleHouse