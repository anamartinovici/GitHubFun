library("tidyverse")

df_data <- read.csv(file = here::here("data", "simulated_data.csv"))

df_data <- df_data %>%
  mutate(is_high_cplx = if_else(complexity_level == "high", 1, 0),
         is_promotion = if_else(message_framing == "promotion", 1, 0))

save(df_data, file = here::here("tmp", "processed_data.RData"))
