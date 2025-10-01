library(dplyr)

data(starwars)

#Selecting data
selectA <- starwars[c("name","height","gender")]

cols <- which(names(starwars) %in% c("mass","species"))
selectB <- starwars[, c("name", names(starwars)[min(cols):max(cols)])]

selectC <- starwars[!(names(starwars)) %in% c("birt_year","gender")]


#Filtering data
filterA <- filter(starwars,starwars["sex"] == "male")

filterB <- filter(starwars,starwars["sex"] == "female" & starwars["homeworld"] == "Alderaan")

filterC <- filter(starwars,starwars["homeworld"] == "Alderaan" | starwars["homeworld"] == "Coruscant" |starwars["homeworld"] == "Endor")

#mutating data
mutateA <- starwars %>%
  select(height,mass) %>%
  mutate(height = height/2.54, mass = mass*2.204623)

mutateB <- starwars %>%
  select(eye_color) 
  mutatet(eye_color = if(eye_color != "black", "blue","brown"){
    eye_color="other"
  })  