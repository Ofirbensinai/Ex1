
#library(tidyverse)  # for wrangling and visualizing data
#library(kableExtra) # for fancy tables

data(iris)

iris %>% 
select(c(starts_with("Sepal"), Species)) %>% 
group_by(Species) %>% 
summarise(Average_Sepal_Length = mean(Sepal.Length)) %>% 
kable() %>%
kable_styling()



