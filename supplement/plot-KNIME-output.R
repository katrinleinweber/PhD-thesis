# Additional File 6 - demo-plot
# Demo plot based on plate-layout-template.xlsx and the KNIME-workflow
# Please note that because the levels of another_factor are set randomly,
# the resulting plot may be different after each change in the .xlsx file.

rm(list = ls())
library(ggplot2)
library(plyr)
library(reshape2)

df_KO <- read.csv2("Additional file 6a - KNIME-output-R-input.csv", dec =".", sep =";")

df_KO.r <- rename(df_KO, c("Abs_630" = "630 nm", "Abs_650" = "650 nm",
                           "Abs_750" = "750 nm", "Abs_580" = "580 nm (CV stain)"))

df_KO.m <- melt(data = df_KO.r,
                value.name = "Abs",
                variable.name = "nm_wavelength",
                id.vars = c("cell_culture", "treatment", "another_factor", "plate_ID"))
# get wide-form absorbance data (all wavelengths) into long-form (nm_wavelength with )

p_KO <- ggplot(data = df_KO.m,
               mapping = aes(x = cell_culture,
                             y = Abs))

p_KO +
  geom_boxplot(notch = T, varwidth = T) +
  facet_grid(. ~ another_factor) +
  labs(x = "cell culture type" ,
       y = "Absorbance at wavelengths\n") +
  theme_classic(base_size = 18)

ggsave("Additional file 6b - KNIME-output-plotted-with-R.pdf", height = 5, width = 10)
