library(dplyr)
library(ggplot2)
#creates data frame with information from csv file
mentalhealth_df <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-BadaLee2000/main/depression_anxiety_data.csv")
#creates dataframe with just gender and depression severity
gender_df <- mentalhealth_df %>% group_by(gender) %>% select(depression_severity)
#creates bar chart, uses color for gender
ggplot(data = gender_df) +
  geom_bar(aes(x = depression_severity, fill = gender)) +
  labs(title = "Severity of Depression in College Students", x = "Depression Severity", y = "Student Count", fill = "Gender")





