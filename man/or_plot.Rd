% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/or_plot.R
\name{or_plot}
\alias{or_plot}
\title{Produce an odds ratio table and plot}
\usage{
or_plot(.data, dependent, explanatory, random_effect = NULL,
  factorlist = NULL, glmfit = NULL, confint_type = NULL,
  remove_ref = FALSE, breaks = NULL, column_space = c(-0.5, 0, 0.5),
  dependent_label = NULL, prefix = "",
  suffix = ": OR (95\% CI, p-value)", table_text_size = 5,
  title_text_size = 18, plot_opts = NULL, table_opts = NULL, ...)
}
\arguments{
\item{.data}{Dataframe.}

\item{dependent}{Character vector of length 1:  name of depdendent variable
(must have 2 levels).}

\item{explanatory}{Character vector of any length: name(s) of explanatory
variables.}

\item{random_effect}{Character vector of length 1, name of random effect variable.}

\item{factorlist}{Option to provide output directly from
\code{\link{summary_factorlist}()}.}

\item{glmfit}{Option to provide output directly from \code{\link{glmmulti}()}
and \code{\link{glmmixed}()}.}

\item{confint_type}{One of \code{c("profile", "default")} for GLM models or
\code{c("default", "Wald", "profile", "boot")} for \code{glmer}
models. Note "default" == "Wald".}

\item{remove_ref}{Logical. Remove reference level for factors.}

\item{breaks}{Manually specify x-axis breaks in format \code{c(0.1, 1, 10)}.}

\item{column_space}{Adjust table column spacing.}

\item{dependent_label}{Main label for plot.}

\item{prefix}{Plots are titled by default with the dependent variable. This
adds text before that label.}

\item{suffix}{Plots are titled with the dependent variable. This adds text
after that label.}

\item{table_text_size}{Alter font size of table text.}

\item{title_text_size}{Alter font size of title text.}

\item{plot_opts}{A list of arguments to be appended to the ggplot call by
"+".}

\item{table_opts}{A list of arguments to be appended to the ggplot table call
by "+".}

\item{...}{Other parameters.}
}
\value{
Returns a table and plot produced in \code{ggplot2}.
}
\description{
Produce an odds ratio table and plot from a \code{glm()} or
\code{lme4::glmer()} model.
}
\examples{
library(finalfit)
library(dplyr)
library(ggplot2)

# OR plot
data(colon_s)
explanatory = c("age.factor", "sex.factor", "obstruct.factor", "perfor.factor")
dependent = "mort_5yr"
colon_s \%>\%
	 or_plot(dependent, explanatory)

colon_s \%>\%
  or_plot(dependent, explanatory, table_text_size=4, title_text_size=14,
    plot_opts=list(xlab("OR, 95\% CI"), theme(axis.title = element_text(size=12))))
}
\seealso{
Other finalfit plot functions: \code{\link{coefficient_plot}},
  \code{\link{ff_plot}}, \code{\link{hr_plot}},
  \code{\link{surv_plot}}
}
\concept{finalfit plot functions}
