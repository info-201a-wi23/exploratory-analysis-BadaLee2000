# This chart is a data visualization that shows the correlation between class standing and depression severity

# We wanted to see if certain college years made a students depression more severe. Since coursework tends to get harder the further you are into college, does the severity of depression get worse too? This graph aims to explore and explain this question.

# Load the necessary packages
library(dplyr)
library(ggplot2)

# Create a data frame from https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-BadaLee2000/main/depression_anxiety_data.csv
mental_health_df <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-BadaLee2000/main/depression_anxiety_data.csv", stringsAsFactors = FALSE)

# Create a horizontal bar chart showing the relationship between a the severity of a college students depression and the year of college they're in.

ggplot(mental_health_df,
       aes(x = school_year,
           y = 1.0,
           fill = depression_severity)) +
  geom_bar(position = "fill", stat = "identity") +
  coord_flip() + 
  labs(title = "Severity of Depression in College Students", x = "Count of College Students", y = "Year of College", fill = "Depression Severity")

