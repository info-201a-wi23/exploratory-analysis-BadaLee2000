# This chart is a data visualization that shows the correlation between gender and depression severity, 
# it shows that while men have higher none to none-minimal depression, women have higher mild to severe depression
# This data visualization is important because it shows how while both women and men face depression, women have predominantly worse depression

install.packages("tidyverse")
library(dplyr)
library(ggplot2)
#creates data frame with information from csv file
mentalhealth_df <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-BadaLee2000/main/depression_anxiety_data.csv")
#creates dataframe with just gender and depression severity
gender_df <- mentalhealth_df %>% group_by(gender) %>% select(depression_severity)
#creates bar chart, uses color for gender
ggplot(data = gender_df) +
  geom_bar(aes(x = depression_severity, fill = gender)) 




