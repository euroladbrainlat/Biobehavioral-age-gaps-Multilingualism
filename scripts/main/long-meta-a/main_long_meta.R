library(meta)
library(grid)
library(dplyr)

datos <- read.csv("Cognition_w2_metagen.csv")

datos$log_RR = log(datos$realtive_risk)
datos <- datos %>%
  mutate(Continent = case_when(
    Country %in% c('Austria', 'Belgium', 'Switzerland', 'Germany', 'France', 'Netherlands', 'Luxembourg', 
                   'Czechia', 'Hungary', 'Poland', 'Slovenia', 'Bulgaria', 'Croatia', 'Romania', 'Slovak Republic',
                   'Denmark', 'Estonia', 'Sweden', 'Finland', 'Lithuania', 'Latvia',
                   'Spain', 'Italy', 'Portugal', 'Greece', 'Cyprus', 'Malta') ~ 'Europa',
    Country %in% c('Chile', 'Uruguay', 'Colombia', 'Ecuador', 'Brasil', 'Mexico', 'Costa Rica') ~ 'LatinAmerica',
    Country %in% c('China', 'Korea', 'India', 'Israel') ~ 'Asia',
    TRUE ~ 'Other'
  ))

meta_result_cog <- metagen(TE = log_RR, seTE = rr_SE, studlab = Country, data = datos, sm = "RR", method.tau = "REML")

pdf("forest_plot_completo_Cognition_metagen.pdf", width = 20, height = 25) 

forest(meta_result_cog, 
       colgap = unit(20, "mm"), 
       cex = 0.75,       
       layout = "BMJ", xlim = c(0.5, 10))  

dev.off()

summary(meta_result_cog)

summary(meta_result_cog)

total_weight_common <- sum(meta_result_cog$w.fixed)
total_weight_random <- sum(meta_result_cog$w.random)

data_to_save <- data.frame(
  Study = meta_result_cog$studlab,                          
  logOR = meta_result_cog$TE,                               
  SE_logOR = meta_result_cog$seTE,                          
  OR_common = exp(meta_result_cog$TE.fixed),                
  Lower_CI_common = exp(meta_result_cog$lower.fixed),       
  Upper_CI_common = exp(meta_result_cog$upper.fixed),       
  Weight_percent_common = (meta_result_cog$w.fixed / total_weight_common) * 100,  
  OR_random = exp(meta_result_cog$TE.random),               
  Lower_CI_random = exp(meta_result_cog$lower.random),      
  Upper_CI_random = exp(meta_result_cog$upper.random),      
  Weight_percent_random = (meta_result_cog$w.random / total_weight_random) * 100  
)

data_to_save <- rbind(data_to_save,
                      data.frame(
                        Study = "Global Effect Common",
                        logOR = NA,
                        SE_logOR = NA,
                        OR_common = exp(meta_result_cog$TE.fixed),
                        Lower_CI_common = exp(meta_result_cog$lower.fixed),
                        Upper_CI_common = exp(meta_result_cog$upper.fixed),
                        Weight_percent_common = NA,
                        OR_random = NA,
                        Lower_CI_random = NA,
                        Upper_CI_random = NA,
                        Weight_percent_random = NA
                      ),
                      data.frame(
                        Study = "Global Effect Random",
                        logOR = NA,
                        SE_logOR = NA,
                        OR_common = NA,
                        Lower_CI_common = NA,
                        Upper_CI_common = NA,
                        Weight_percent_common = NA,
                        OR_random = exp(meta_result_cog$TE.random),
                        Lower_CI_random = exp(meta_result_cog$lower.random),
                        Upper_CI_random = exp(meta_result_cog$upper.random),
                        Weight_percent_random = NA
                      ))


# Guarda en un archivo Excel
write_xlsx(data_to_save, "forest_plot_completo_Cognition_metagen.xlsx")



datos <- read.csv("Barthel_w2_metagen.csv")
datos$log_RR = log(datos$realtive_risk)
datos <- datos %>%
  mutate(Continent = case_when(
    Region %in% c('WesternEurope', 'EasternEurope', 'NorthernEurope', 'SouthernEurope') ~ 'Europa',
    Region %in% c('LatinAmerica') ~ 'LatinAmerica',
    Region %in% c('Asia') ~ 'Asia',
    Region %in% c('Africa') ~ 'Africa',
    TRUE ~ 'Other'
  ))

meta_result_cog <- metagen(TE = log_RR, seTE = rr_SE, studlab = Country, data = datos, sm = "RR", method.tau = "REML")

pdf("forest_plot_completo_Barthel_metagen.pdf", width = 20, height = 25) 

forest(meta_result_cog, 
       colgap = unit(20, "mm"), 
       cex = 0.75,       
       layout = "BMJ", xlim = c(0.5, 10))  

dev.off()

summary(meta_result_cog)

summary(meta_result_cog)

total_weight_common <- sum(meta_result_cog$w.fixed)
total_weight_random <- sum(meta_result_cog$w.random)

data_to_save <- data.frame(
  Study = meta_result_cog$studlab,                         
  logOR = meta_result_cog$TE,                               
  SE_logOR = meta_result_cog$seTE,                          
  OR_common = exp(meta_result_cog$TE.fixed),                
  Lower_CI_common = exp(meta_result_cog$lower.fixed),       
  Upper_CI_common = exp(meta_result_cog$upper.fixed),       
  Weight_percent_common = (meta_result_cog$w.fixed / total_weight_common) * 100,  
  OR_random = exp(meta_result_cog$TE.random),               
  Lower_CI_random = exp(meta_result_cog$lower.random),      
  Upper_CI_random = exp(meta_result_cog$upper.random),      
  Weight_percent_random = (meta_result_cog$w.random / total_weight_random) * 100  
)

data_to_save <- rbind(data_to_save,
                      data.frame(
                        Study = "Global Effect Common",
                        logOR = NA,
                        SE_logOR = NA,
                        OR_common = exp(meta_result_cog$TE.fixed),
                        Lower_CI_common = exp(meta_result_cog$lower.fixed),
                        Upper_CI_common = exp(meta_result_cog$upper.fixed),
                        Weight_percent_common = NA,
                        OR_random = NA,
                        Lower_CI_random = NA,
                        Upper_CI_random = NA,
                        Weight_percent_random = NA
                      ),
                      data.frame(
                        Study = "Global Effect Random",
                        logOR = NA,
                        SE_logOR = NA,
                        OR_common = NA,
                        Lower_CI_common = NA,
                        Upper_CI_common = NA,
                        Weight_percent_common = NA,
                        OR_random = exp(meta_result_cog$TE.random),
                        Lower_CI_random = exp(meta_result_cog$lower.random),
                        Upper_CI_random = exp(meta_result_cog$upper.random),
                        Weight_percent_random = NA
                      ))


write_xlsx(data_to_save, "forest_plot_completo_Barthel_metagen.xlsx")



datos <- read.csv("Well_being_domain_w2_metagen.csv")
datos$log_RR = log(datos$realtive_risk)
datos <- datos %>%
  mutate(Continent = case_when(
    Region %in% c('WesternEurope', 'EasternEurope', 'NorthernEurope', 'SouthernEurope') ~ 'Europa',
    Region %in% c('LatinAmerica') ~ 'LatinAmerica',
    Region %in% c('Asia') ~ 'Asia',
    Region %in% c('Africa') ~ 'Africa',
    TRUE ~ 'Other'
  ))

meta_result_cog <- metagen(TE = log_RR, seTE = rr_SE, studlab = Country, data = datos, sm = "RR", method.tau = "REML")

pdf("forest_plot_completo_Well_being_domain_metagen.pdf", width = 20, height = 25) 

forest(meta_result_cog, 
       colgap = unit(20, "mm"), 
       cex = 0.75,       
       layout = "BMJ", xlim = c(0.5, 10))  

dev.off()

summary(meta_result_cog)

summary(meta_result_cog)

total_weight_common <- sum(meta_result_cog$w.fixed)
total_weight_random <- sum(meta_result_cog$w.random)

data_to_save <- data.frame(
  Study = meta_result_cog$studlab,                          
  logOR = meta_result_cog$TE,                               
  SE_logOR = meta_result_cog$seTE,                          
  OR_common = exp(meta_result_cog$TE.fixed),                
  Lower_CI_common = exp(meta_result_cog$lower.fixed),       
  Upper_CI_common = exp(meta_result_cog$upper.fixed),       
  Weight_percent_common = (meta_result_cog$w.fixed / total_weight_common) * 100,  
  OR_random = exp(meta_result_cog$TE.random),               
  Lower_CI_random = exp(meta_result_cog$lower.random),      
  Upper_CI_random = exp(meta_result_cog$upper.random),      
  Weight_percent_random = (meta_result_cog$w.random / total_weight_random) * 100 
)

data_to_save <- rbind(data_to_save,
                      data.frame(
                        Study = "Global Effect Common",
                        logOR = NA,
                        SE_logOR = NA,
                        OR_common = exp(meta_result_cog$TE.fixed),
                        Lower_CI_common = exp(meta_result_cog$lower.fixed),
                        Upper_CI_common = exp(meta_result_cog$upper.fixed),
                        Weight_percent_common = NA,
                        OR_random = NA,
                        Lower_CI_random = NA,
                        Upper_CI_random = NA,
                        Weight_percent_random = NA
                      ),
                      data.frame(
                        Study = "Global Effect Random",
                        logOR = NA,
                        SE_logOR = NA,
                        OR_common = NA,
                        Lower_CI_common = NA,
                        Upper_CI_common = NA,
                        Weight_percent_common = NA,
                        OR_random = exp(meta_result_cog$TE.random),
                        Lower_CI_random = exp(meta_result_cog$lower.random),
                        Upper_CI_random = exp(meta_result_cog$upper.random),
                        Weight_percent_random = NA
                      ))


write_xlsx(data_to_save, "forest_plot_completo_Well_being_metagen.xlsx")

