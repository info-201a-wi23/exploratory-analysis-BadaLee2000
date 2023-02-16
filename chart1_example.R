x_values <- seq(1, 3)
y_values <- seq(1,3)

library(ggplot2)
ggplot() +
  geom_point(aes(x=x_values, y = y_values))
library(dplyr)

mentalhealth_df <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-BadaLee2000/main/depression_anxiety_data.csv", stringsAsFactors = FALSE)

dep_none <- mentalhealth_df %>% select(age, gender, school_year, depression_severity) %>% filter(depression_severity == "none")
dep_none_minimal <- mentalhealth_df %>% select(age, gender, school_year, depression_severity) %>% filter(depression_severity == "None-minimal")
dep_mild <-  mentalhealth_df %>% select(age, gender, school_year, depression_severity) %>% filter(depression_severity == "Mild")
dep_moderate <- mentalhealth_df %>% select(age, gender, school_year, depression_severity) %>% filter(depression_severity == "Moderate")
dep_moderately_severe <- mentalhealth_df %>% select(age, gender, school_year, depression_severity) %>% filter(depression_severity == "Moderately severe")
dep_severe <- mentalhealth_df %>% select(age, gender, school_year, depression_severity) %>% filter(depression_severity == "Severe")

anx_none <- mentalhealth_df %>% select(age, gender, school_year, anxiety_severity) %>% filter(anxiety_severity == 0)
anx_none_minimal <- mentalhealth_df %>% select(age, gender, school_year, anxiety_severity) %>% filter(anxiety_severity == "None-minimal")
anx_mild <-  mentalhealth_df %>% select(age, gender, school_year, anxiety_severity) %>% filter(anxiety_severity == "Mild")
anx_moderate <- mentalhealth_df %>% select(age, gender, school_year, anxiety_severity) %>% filter(anxiety_severity == "Moderate")
anx_moderately_severe <- mentalhealth_df %>% select(age, gender, school_year, anxiety_severity) %>% filter(anxiety_severity == "Moderately severe")
anx_severe <- mentalhealth_df %>% select(age, gender, school_year, anxiety_severity) %>% filter(anxiety_severity == "Severe")

