data()
library (datasets)
data(CO2)
CO2 %>% ggplot(aes(conc,uptake,label=Plant,color=Treatment))+geom_label()