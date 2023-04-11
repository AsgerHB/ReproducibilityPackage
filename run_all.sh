# $@ is bash for "all arguments"
julia "fig-BarbaricMethodAccuracy/Run Experiment.jl" $@
julia "fig-BBGranularityCost/Run Experiment.jl" $@
julia "fig-BBShieldingResultsGroup/Run Experiment.jl" $@
julia "fig-BBShieldRobustness/Run Experiment.jl" $@
julia "fig-CCShieldingResultsGroup/Run Experiment.jl" $@
julia "fig-DCShieldingResultsGroup/Run Experiment.jl" $@
julia "fig-NoRecovery/Run Experiment.jl" $@
julia "fig-OPShieldingResultsGroup/Run Experiment.jl" $@
julia "fig-RWShieldingResultsGroup/Run Experiment.jl" $@
julia "tab-BBSynthesis/Run Experiment.jl" $@
julia "fig-DifferenceRigorousBarbaric/Run Experiment.jl" # Uses the results from BBSynthesis. Does not accept the --test parameter.
julia "tab-CCSynthesis/Run Experiment.jl" $@
julia "tab-DCSynthesis/Run Experiment.jl" $@
julia "tab-OPSynthesis/Run Experiment.jl" $@
julia "tab-RWSynthesis/Run Experiment.jl" $@