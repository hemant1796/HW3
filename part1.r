library("ggplot2")

PolicyViz_WSJ_Remake <- read_excel("/Users/hkuma001/Downloads/PolicyViz_WSJ_Remake.xlsx")


ggplot(PolicyViz_WSJ_Remake, aes(x= Year)) + 
      ggtitle("Out of Work", subtitle = "Percent of families with at least one member unemployed") +
      geom_line(aes(y = White),color="Blue",size=1.5) + 
      geom_line(aes(y = Black),color = "red",size=1.5) +
      geom_line(aes(y = Asian),color = "green",size=1.5) +
      geom_line(aes(y = Hispanic),color = "orange",size=1.5) +
      scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
      scale_y_continuous(breaks = scales::breaks_extended(n = 11),limits = c(0, 20)) +
      geom_label(
        label="Black", 
        x=2012.7,
        y=18,
        color = 'red',
        label.size = NA
      ) +
      geom_label(
        label="Hispanic", 
        x=2012.7,
        y=12,
        color = 'orange',
        label.size = NA
      ) +geom_label(
        label="White", 
        x=2012.7,
        y=10,
        color = 'blue',
        label.size = NA
      ) +geom_label(
        label="Asian", 
        x=2012.7,
        y=6.3,
        color = 'green',
        label.size = NA
      ) +
      theme(axis.title.x=element_blank(),axis.title.y=element_blank()) +
      theme(plot.title = element_text(face = "bold"))
      


      




