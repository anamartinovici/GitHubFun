library("tidyverse")

load(here::here("tmp", "processed_data.RData"))

data_plot <- df_data %>%
  ggplot(aes(x = message_framing, y = product_satisfaction, 
             fill = complexity_level)) +
  geom_boxplot(position = "dodge")

ggsave(plot = data_plot,
       filename = "tmp/data_summary.png", 
       width = 15, height = 10, units = "cm", dpi = 300, type = "cairo")
