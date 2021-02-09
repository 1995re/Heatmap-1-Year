library(ggplot2)
library(ggthemes)
library(RColorBrewer)

*library(readxl)
**data <- read_excel("data/data.xls")
*View(data)

ggplot(data, aes(Tanggal, Bulan)) +
  geom_tile(aes(fill = Jumlah)) + geom_text(aes(label=Jumlah)) +
  scale_fill_gradientn(colors = rev(brewer.pal(9, "BuPu"))) +
  scale_y_discrete(limits = rev(unique(data$Bulan))) +
  ggtitle("Data Positif Harian COVID-19 (DKI Jakarta)") +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        panel.background = element_blank(),
        axis.text.x = element_text(angle = 90)) + coord_equal(ratio = 1) + theme_tufte(base_family="Helvetica") + scale_x_continuous(breaks=c(1:31), expand=c(0,0))
