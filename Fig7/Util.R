library(ggplot2)


## defien the compare means color
p_color = "#082032"

## define my_theme
my_theme = theme_bw() +
    theme(panel.grid = element_blank(),
          panel.border = element_rect(size=1.5),
          axis.ticks = element_line(size=1),
          text = element_text(face = 'bold'),
          axis.text = element_text(color = 'black', size=13),
          plot.title = element_text(hjust=0.5, size=17),
          plot.subtitle = element_text(hjust = 0.5, size=13),
          axis.title = element_text(size=15),
          legend.text = element_text(size=11),
          legend.title = element_text(size=13)
          )
my_theme_strip = my_theme +
    theme(strip.background = element_blank())
    # save(my_theme, my_theme_strip, file = "Rdata/my_theme.Rdata")



sigFun = function(p){
    
    p = as.numeric(p)
    
    res = ifelse(p < 0.0001, "****",
           ifelse(p < 0.001,
                  "***",
                  ifelse(p < 0.01, "**",
                         ifelse(p < 0.05, "*", "ns"))))
    return(res)
}
