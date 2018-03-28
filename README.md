# Plot-examples-in-R
There are many kinds of plot in R. I stored some of my
frequently used codes here for reference, e.g. ggplot2.


Using `rbindlist` to collapse a list into a dataframe
```{R}
library(data.table)
dta_push <- rbindlist(dta_push)
```

The `exapnd = c(0, 0)` forces axis starts from origin. The `panel.grid.major` can adjust the grid in ggplot.
```
scale_x_continuous(limits = c(0, 180), breaks = seq(0, 170, 10), expand = c(0, 0)) +
scale_y_continuous(limits = c(0, 4.5), breaks = seq(0, 4.5, 0.5), expand = c(0, 0)) +
theme(panel.grid.major.x = element_blank(), panel.grid.minor.x = element_blank())
```

change label and tick size
```
g+theme(axis.text=element_text(size=12),
        axis.title=element_text(size=14,face="bold"))
```
