if(!require("pacman"))install.packages("pacman")
pacman::p_load(tidyverse, here)
gss_cat
tv_watch_hours_table <- gss_cat %>% 
  filter(age >= 30) %>% 
  group_by(marital) %>% 
  summarize(tv_watch_mean = mean(tvhours, na.rm = TRUE))
write.csv(tv_watch_hours_table, here("TV_hours_by_marital_status.csv"))
