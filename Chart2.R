
library(dplyr)
library(ggplot2)
#creates data frame with information from csv file
mentalhealth_df <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-BadaLee2000/main/depression_anxiety_data.csv")
#creates dataframe with just age and depression severity
age_df <- mentalhealth_df %>% group_by(age) %>% select(depression_severity)
#creates bar chart, uses color for depression severity
ggplot(data = age_df) +
  geom_histogram(aes(x = age, fill = depression_severity)) +
  labs(title = "Severity of Depression in College Students", x = "Age", y = "Student Count", fill = "Depression Severity")

