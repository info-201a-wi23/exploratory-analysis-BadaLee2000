# Load the necessary packages
library(dplyr)
library(ggplot2)

# Creates a data frame with information from csv file
mentalhealth_df <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-BadaLee2000/main/depression_anxiety_data.csv")

# Creates a dataframe with just gender and depression severity
gender_df <- mentalhealth_df %>% 
  group_by(gender) %>% 
  select(depression_severity)

# Creates a bar chart and uses color for gender
ggplot(data = mentalhealth_df) +
  geom_bar(aes(x = depression_severity,
               fill = gender),
           position = "dodge") +
  scale_x_discrete(limits = c("none", "None-minimal", "Mild", "Moderate", "Moderately severe", "Severe")) +
  theme(axis.text = element_text(size = 8)) +
  scale_fill_manual(values = c("#DE3163","#0096FF")) +
    labs(title = "Severity of Depression in College Students",
         x = "Depression Severity", 
         y = "Count of College Students",
         fill = "Gender")
