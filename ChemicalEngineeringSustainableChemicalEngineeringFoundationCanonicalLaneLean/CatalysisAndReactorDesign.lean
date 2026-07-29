import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean

structure CatalysisAndReactorDesignPackage where
  catalystActiveSiteModeled : Prop
  reactionMechanismProposed : Prop
  reactorMassBalanceSet : Prop
  heatTransferIncluded : Prop

structure CatalysisAndReactorDesignEvidence (C : CatalysisAndReactorDesignPackage) where
  catalystActiveSiteModeledClosed : C.catalystActiveSiteModeled
  reactionMechanismProposedClosed : C.reactionMechanismProposed
  reactorMassBalanceSetClosed : C.reactorMassBalanceSet
  heatTransferIncludedClosed : C.heatTransferIncluded

def CatalysisAndReactorDesignClosed (C : CatalysisAndReactorDesignPackage) : Prop :=
  C.catalystActiveSiteModeled ∧ C.reactionMechanismProposed ∧ C.reactorMassBalanceSet ∧ C.heatTransferIncluded

theorem catalysis_and_reactor_design_closed_from_evidence (C : CatalysisAndReactorDesignPackage) (E : CatalysisAndReactorDesignEvidence C) :
    CatalysisAndReactorDesignClosed C := by
  exact And.intro E.catalystActiveSiteModeledClosed
    (And.intro E.reactionMechanismProposedClosed
      (And.intro E.reactorMassBalanceSetClosed E.heatTransferIncludedClosed))

end ChemicalEngineeringSustainableChemicalEngineeringFoundationCanonicalLaneLean
end HautevilleHouse