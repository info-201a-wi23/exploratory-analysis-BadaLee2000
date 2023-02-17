# The Five Values
summary <- read.csv("depression_anxiety_data.csv", stringsAsFactors = FALSE)

# Which gender felt more anxiety? FEMALE 
depression_gender_female <- summary_data %>% filter(gender == "female" & age > 17 & age < 25) %>% filter(anxiousness == "TRUE")
nrow(depression_gender_female)
depression_gender_male <- summary_data %>% filter(gender == "male" & age > 17 & age < 25) %>% filter(anxiousness == "TRUE")
nrow(depression_gender_male)

# In which age group did the most suicide happen? 10, 27, 12, 7, 10, 1, 1
depression_suicidal_18 <- summary_data %>% filter(age == 18) %>% filter(suicidal == "TRUE")
nrow(depression_suicidal_18)

depression_suicidal_19 <- summary_data %>% filter(age == 19) %>% filter(suicidal == "TRUE")
nrow(depression_suicidal_19)

depression_suicidal_20 <- summary_data %>% filter(age == 20) %>% filter(suicidal == "TRUE")
nrow(depression_suicidal_20)

depression_suicidal_21 <- summary_data %>% filter(age == 21) %>% filter(suicidal == "TRUE")
nrow(depression_suicidal_21)

depression_suicidal_22 <- summary_data %>% filter(age == 22) %>% filter(suicidal == "TRUE")
nrow(depression_suicidal_22)

depression_suicidal_23 <- summary_data %>% filter(age == 23) %>% filter(suicidal == "TRUE")
nrow(depression_suicidal_23)

depression_suicidal_24 <- summary_data %>% filter(age == 24) %>% filter(suicidal == "TRUE")
nrow(depression_suicidal_24)

# find the number of students who experienced depression (209)
depression_depressiveness <- summary_data %>% filter(17 < age & age < 25) %>% filter(depressiveness == "TRUE")
nrow(depression_depressiveness)

# find the number of students who have been diagnosed depression (65)
depression_diagnosis <- summary_data %>% filter(17 < age & age < 25) %>% filter(depression_diagnosis == "TRUE")
nrow(depression_diagnosis)

# the number of students who committed suicide (68) 
depress_suicidal <- summary_data %>% filter(17 < age & age < 25) %>% filter(suicidal == "TRUE")
nrow(depress_suicidal)


