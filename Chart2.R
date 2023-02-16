# This chart is a data visualization that shows the correlation between age and depression severity
# it is important to notice that depression often peaks between age 19-22, this is important because
# it can help destigmatize that those with depression in their early twenties are alone, or you that should be embarrassed to face depression at such a young age.
install.packages("tidyverse")
library(dplyr)
library(ggplot2)
#creates data frame with information from csv file
mentalhealth_df <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-BadaLee2000/main/depression_anxiety_data.csv")
#creates dataframe with just age and depression severity
age_df <- mentalhealth_df %>% group_by(age) %>% select(depression_severity)
#creates bar chart, uses color for depression severity
ggplot(data = age_df) +
  geom_histogram(aes(x = age, fill = depression_severity)) 
