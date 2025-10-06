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
  select(eye_color)  %>%
  mutate(eye_color = if_else(eye_color %in% c("black", "blue", "brown"), eye_color, "other"))          

mutateC <- starwars %>%
  select(height) %>%
  mutate( heightcat = if_else(height < 180,"tall","short"))

#Calculating
meanHM <- starwars %>%
  select(height,mass) %>%
  summarise(height_avg = mean(height, na.rm = TRUE),mass_avg=mean(mass, na.rm = TRUE))

meanHM_gender <- starwars %>%
  select(height,mass,gender) %>%
  filter(gender == "masculine" | gender == "feminine") %>%
  group_by(gender) %>%
  summarise(height_avg = mean(height, na.rm = TRUE),mass_avg=mean(mass, na.rm = TRUE))

meanH_women_species <- starwars %>%
  select(height,sex,species) %>%
  filter(sex=="female") %>%
  group_by(species) %>%
  summarise(mean_height = mean(height,na.rm=TRUE))
