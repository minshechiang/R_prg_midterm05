load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
library(magrittr)

straw_hat_df$birth_date <- Sys.Date() %>%
  format(., "%Y") %>%
  as.numeric() %>%
  `-` (straw_hat_df$age) %>%
  paste(., straw_hat_df$birthday, sep="-") %>%
  as.Date()