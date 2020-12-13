

#' @references
#' R Core Team (2020). R: A language and environment for statistical
#' computing. R Foundation for Statistical Computing, Vienna,
#' Austria. URL https://www.R-project.org/.
#'
#' H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag
#' New York, 2016.
#'
#'@export
#'@import ggplot2
plotERMonthlyCase  <-function(Group,sex = ALL){
  ggplot(ERMonthlyCase, aes(x = `Month`,y =`Reported COVID-19 infection rate`,
                            group=`Ethno-Racial Group`,
                            color=`Ethno-Racial Group`))+ geom_line()
}

#'plot the cases happened from August 2020 to October 2020
#'
#'a function that visualized the data of ERMonthlyPer in to a line graph,
#'differences by month.
#' @returna plot that shows the cases happen each month from August to September,
#' group by theri Ethno-Racial Group.
#'
#'@examples
#'Plot the data to visualize the overall graph
#'plotERMonthlyPer <-function()
#'
#' @references
#' R Core Team (2020). R: A language and environment for statistical
#' computing. R Foundation for Statistical Computing, Vienna,
#' Austria. URL https://www.R-project.org/.
#'
#' H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag
#' New York, 2016.
#'
#'@export
#'@import ggplot2
#'
plotERMonthlyPer <-function(){
  ggplot(ERMonthlyPer, aes(x = `Month`,y =`Count of COVID-19 cases`,
                           group=`Ethno-Racial Group`,
                           color=`Ethno-Racial Group`))+ geom_line()
}
#' plot the ERPopCase data by sex into three histagram.
#'
#' A function that use ERPopCase data into three histagram, in each histagram,
#' it is divide by Ethon-Racial Group to show what is the rate for getting
#' Covid 19.
#'
#' @return a plot contain three histagram to show the cases that got effected.
#'
#' @example
#' plotERPopCase()
#'
#' @references
#' R Core Team (2020). R: A language and environment for statistical
#' computing. R Foundation for Statistical Computing, Vienna,
#' Austria. URL https://www.R-project.org/.
#'
#' H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag
#' New York, 2016.
#'
#'@export
#'@import ggplot2
plotERPopCase <-function(){
  ggplot(ERPopCase, aes(x = `Sex`,
                        y = `Reported COVID-19 infection rate`,group =`Ethno-Racial Group`)) + geom_bar(stat = "identity")

#' plot the cases reported in ERPopPer by sex into histagram.
#'
#'
#' @references
#' R Core Team (2020). R: A language and environment for statistical
#' computing. R Foundation for Statistical Computing, Vienna,
#' Austria. URL https://www.R-project.org/.
#'
#' H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag
#' New York, 2016.
#'
#'@export
#'@import ggplot2
plotERPopPer <-function(){
  ggplot(ERPopPer, aes(x = `Ethno-Racial Group`,
                       y = `Count of COVID-19 cases`,fill = Sex)) +
    facet_grid(Sex ~ .)+ geom_bar(stat = "identity")
}
#'
#'
#' @references
#' R Core Team (2020). R: A language and environment for statistical
#' computing. R Foundation for Statistical Computing, Vienna,
#' Austria. URL https://www.R-project.org/.
#'
#' H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag
#' New York, 2016.
#'
#'@export
#'@import ggplot2
plotIncomeCase <-function(){
  ggplot(IncomeCase, aes(x = `Income group`,
                         y =`Reported COVID-19 infection rate`,
                         group=`Age group`,color=`Age group`))+ geom_line()
}
#'
#'
#' @references
#' R Core Team (2020). R: A language and environment for statistical
#' computing. R Foundation for Statistical Computing, Vienna,
#' Austria. URL https://www.R-project.org/.
#'
#' H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag
#' New York, 2016.
#'
#'@export
#'@import ggplot2
plotIncomePer <- function(){
  ggplot(IncomePer, aes(x = `Income group`,y =`Count of COVID-19 Cases`,
                        group=`Age group`,color=`Age group`))+ geom_line()
}
#' @references
#' R Core Team (2020). R: A language and environment for statistical
#' computing. R Foundation for Statistical Computing, Vienna,
#' Austria. URL https://www.R-project.org/.
#'
#' H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag
#' New York, 2016.
#'
#'@export
#'@import ggplot2
plotIncMonthyCase <-function(Month){
    ggplot(IncomeMonthlyCasee, aes(x = `Month`,
                                   y =`Reported COVID-19 infection rate`,
                                   group=`Income group`, color=`Income group`))
    +geom_line()

}
#' @references
#' R Core Team (2020). R: A language and environment for statistical
#' computing. R Foundation for Statistical Computing, Vienna,
#' Austria. URL https://www.R-project.org/.
#'
#' H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag
#' New York, 2016.
#'
#'@export
#'@import ggplot2
plotIncMonthyPer <-function(){
  ggplot(IncomeMonthlyPer, aes(x = `Month`,y =`Count of COVID-19 cases`,
                               group=`Income group`, color=`Income group`))+
    geom_line()
}


