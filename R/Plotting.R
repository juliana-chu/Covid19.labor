

plotERMonthly <-function(Group,sex = ALL){
  ggplot(ERMonthlyPer, aes(x=Ethno-Racial Group, fill=motif)) +
    geom_histogram(aes(x=Ethno-Racial Group), alpha=.75, bins=15) +
    ggtitle("Motif Count Distribution Graph")
  ggplot(ERMonthlyCase,aes(ERMonthlyCase$`Rate rest of pop`)) +geom_histogram()

  ggplot(data = ERPopPer,mapping = aes(x = ERPopPer$`Count of COVID-19 cases`, fill = Sex)) +geom_histogram(binwidth = 5.0) +facet_grid(Sex ~ .) +ggtitle("Histogram of Sepal.Width in iris dataset") +xlab("Count of COVID-19 cases") +theme_bw() +theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
    }
  }
}
