
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Covid19.labor

<!-- badges: start -->

<!-- badges: end -->

Covid19.labor is an R package to demonstrate components of a simple R
package. This includes the main components: DESCRIPTION, NAMESPACE, man
subdirectory and R subdirectory. Additionally, licence, README and
subdirectories vignettes, tests, data and inst are also explored. The
package is targeted for BCB410H students exploring development of an R
package in bioinformatics.The goal of Covid19.labor is to display how
labor of Canada is been effected by Covid19, by using the data that
government gave.This will help to show how Canada labor rate is been
effected, how the econamy of Canada been changed, will give a warning to
government, and at later, will show how econamic change after helping
actions.

## Installation

You can install the released version of Covid19.labor from
[CRAN](https://CRAN.R-project.org) with:

``` r
require("devtools")
devtools::installgithub("juliana-chu/Covid19.labor",buildvignettes = TRUE)
library("Covid19.labor")
```

To run the Shiny app:

``` r
runTestingPackage()
```

\#\#Overview\#\# Covid19.labor contains 4 functions to demonstrate
components of a simple R package. The CasePerMonth function shows the
labor change in the month, where shows how many are employed and how
many are unemployed. The CaseChangeMonth function shows the labor rate
change from last month to this month, which will give a percentage about
how the rate changed. The CaseGraph will provide a graph where have
graph for the changes for the labor and the case number of Covid19
provided by government. The runTestingPackage is the function that
launches the shiny app for this package. The package also contains
Covid19 Canada dataset Covide19.analysis. Refer to package vignettes for
more details.

``` r
browseVignettes("TestingPackage")
```

\#\#Contributions\#\# The author of the package is Juliana Chu. The
CaseGraph will provide a graph where have graph for the changes for the
labor and the case number of Covid19 provided by government. This
function will use the graph from Covid19.analysis R package to generate
a covid19 cases graph which will combine with labor cases. The
covid19.analysis package is used for generating an overview of Covid19
cases in Canada. The covid19\_plts.R functions will be borrowed from
covid19.analysis package, to generate graph for this R pakage.

\#\#Reference\#\# Wickham, H. and Bryan, J. (2019). R Packages (2nd
edition). Newton, Massachusetts: O’Reilly Media. <https://r-pkgs.org/>

R Core Team (2020). R: A language and environment for statistical
computing. R Foundation for Statistical Computing, Vienna, Austria.
<https://www.R-project.org/>

Marcelo Ponce, Amit Sandhel (2020). covid19.analytics: An R Package to
Obtain, Analyze and Visualize Data from the Corona Virus Disease
Pandemic. URL <https://arxiv.org/abs/2009.01091>

Pandey, P(2019).A Comprehensive Guide to Data Visualisation in R for
Beginners. Retrieved October 27, 2020, from
<https://towardsdatascience.com/a-guide-to-data-visualisation-in-r-for-beginners->
ef6d41a34174\#e672

Government of Canada(n.d.). Canadian Economic Dashboard and COVID-19.
Retrieved October 27, 2020, from
<https://www150.statcan.gc.ca/n1/pub/71-607-x/71-607-x2020009-eng.htm>

Steipe, B. (2020). RPR-Coding Style. Retrieved October 04, 2020, from
<http://steipe.biochemistry>.
utoronto.ca/abc/index.php/RPR-Coding\_style

\#\#Acknowledge\#\# This package was developed as part of an assessment
for 2020BCB410H: Applied Bioinformatics, University of Toronto,
Toronto,CANADA.
