# finalfit 0.9.4

* `coxphuni()` and `coxphmulti()` now take the other `library(survival)` functions `survival::strata()` and `survival::cluster()`. 
* Fixed `hr_plot()` axis title edit option. 
* Add option to remove reference level (`remove_ref = TRUE`) to `or_plot()`, `hr_plot()` and `coefficient_plot()`. 

# finalfit 0.9.3

* Bug in `or_plot()` and `hr_plot()` introduced in 0.9.2 because of new total column specification. 

# finalfit 0.9.2

* Competing risks time-to-event regression now supported via `cmprsk::crr()`: `crruni()`, `crrmulti()` and `fit2df()`.
* Complex stratified sampling now supported via `library(survey)`: `svyglmuni()`, `svyglmmulti()` provide support for . #13
* `summary_factorlist()` total column now summarises continuous variables.  #17 #21
* `summary_factorlist()` can now take any `Hmisc:::summary.formula` argument, such as `catTest = catTestfisher`. 
*  `catTestfisher()` added. 
* `finalfit_permute()` added. 

# finalfit 0.9.1

* `glmuni()`, `glmmulti()`, `lmuni()`, `lmmulti()` now all take `weights` and any other `glm()` or `lm()` argument. #13
* `summary_factorlist()` rework. Now supports any number of factor levels in dependent. #14 #15
* `summary_factorlist()` now provides total count for continuous variable. #17

# finalfit 0.9.0

* `or_plot()` bug fix
* `ff_remove_ref()` added. #12
* `glmmixed()` and `lmmixed()` now support random gradient models, and all complex `lme4` specifications. 
* Data preparation vignette added.

# finalfit 0.8.9

* `ff_plot()` added
* `coefficient_plot()` added
* `variable_type()` added
* Compatibility for future `shinyfit` started. 
* `ff_relabel()` added.
* Error added to `finalfit()` for not-allowed colons (:) in factor levels. #10

# finalfit 0.8.8

* `ff_glimpse()` re-written to remove `psych` dependency
* `missing_glimpse()` added: single data frame describing all variables and missing values
* `ff_interaction()` added: create variable for an interaction between two factors
* `ff_label()` added: easily add label to variable in dataframe
* `ff_newdata()` modified to take dataframe without requirement for dependent and explanatory arguments
* `summary_factorlist()` modified to allow user to change number of unique factor levels at which a variable a continuous variable is converted to a factor (`cont_cut`). #9 
* `fit2df()` and its internal function `extract_fit` modified to take `confint_type` and `confint_level`. 

# finalfit 0.8.7

* New vignettes
* pkgdown website support
* `missing_predictorMatrix()` added for use with `mice`

# finalfit 0.8.6

* Bug fix

# finalfit 0.8.5

* Extended missing data functions added

# finalfit 0.8.4

* Bootstrap simulation functions added

# finalfit 0.8.3

* Bug fix

# finalfit 0.8.2

* Missing data functions added

# finalfit 0.8.1

## Bug fixes

* `lmuni()`, `lmmulti()`, `lmmixed()`, `glmuni()`, `glmmulti()`, `glmmixed()`, `coxphuni()`, `coxphmulti()`

## New functions

* `metrics_hoslem()` is the first of a number of 'metrics' functions which will be introduced. 

# finalfit 0.7.8

* First CRAN release
