# Load the necessary packages
library(dplyr)
library(ggplot2)

# Create a data frame from https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-BadaLee2000/main/depression_anxiety_data.csv
mental_health_df <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-BadaLee2000/main/depression_anxiety_data.csv", stringsAsFactors = FALSE)

# Create a horizontal bar chart showing the relationship between a the severity of a college students depression and the year of college they're in.
ggplot(data = mentalhealth_df) +
  geom_col(aes(x = school_year,
             y = frequency(depression_severity),
             fill = depression_severity),
         position = "fill") +
  scale_fill_brewer(palette = "Oranges") +
  coord_flip() +
  labs(title = "Severity of Depression in College Students",
       x = "Year of College",
       y = "Count of College Students",
       fill = "Depression Severity")
