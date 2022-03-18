library(tidyverse)

N <- 345

my_data <- data.frame(part_ID = paste0("PID_", 1:N),
                      complexity_level = sample(x = c("low", "high"), size = N, replace = TRUE),
                      message_framing = sample(x = c("prevention", "promotion"), size = N, replace = TRUE),
                      unobs_noise = rnorm(n = N, mean = 0, sd = 1))

my_data <- my_data %>%
  mutate(is_high_cplx = if_else(complexity_level == "high", 1, 0),
         is_promotion = if_else(message_framing == "promotion", 1, 0))

main_cplx <- 1.5
main_frame <- 1
main_cplx_frame <- 3

my_data <- my_data %>%
  mutate(product_satisfaction = 2 + main_cplx * is_high_cplx + 
           main_frame * is_promotion +
           main_cplx_frame * is_high_cplx * is_promotion + unobs_noise)

my_data %>%
  ggplot(aes(x = message_framing, y = product_satisfaction, fill = complexity_level)) +
  geom_boxplot(position = "dodge")


raw_data <- my_data %>%
  select(part_ID, complexity_level, message_framing, product_satisfaction)

write_csv(raw_data, "data/raw_data.csv")
