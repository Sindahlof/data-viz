library(dplyr)

data("starwars")

toPlot <- starwars %>%
  select(name,mass) %>%
  arrange(desc(mass)) %>%
  slice_head(n=5) %>%


ggplot(toPlot, aes(x = name, y = mass, fill = mass)) + 
  geom_bar(stat = "identity") + 
  scale_fill_gradient(low = "lightblue", high = "darkblue")


toPlotSpecies <- starwars %>%
  select(species) %>%
  filter(!is.na(species)) %>%
  group_by(species) %>%
  summarise(count = n()) %>%             
  arrange(desc(count)) %>%
  slice_head(n=10)

ggplot(toPlotSpecies, aes(species,count))+ geom_col()  


toPlotGender <- starwars %>%
  select (gender, species) %>%
  group_by(species,gender) %>%
  summarise(count = n())

ggplot(toPlotGender, aes(x=species, y=count, fill = gender)) + geom_col()



toPlotAge <- starwars %>%
  select(name,birth_year) %>%
  filter(!is.na(birth_year))


ggplot(toPlotAge, aes(birth_year)) + 
  geom_histogram(binwidth = 100, fill = "steelblue")  


toPlotHeight <- starwars %>%
  select(height,gender) %>%
  filter(!is.na(height)) %>%
  filter(!is.na(gender))

ggplot(toPlotHeight,aes(x=height, fill=gender)) + geom_boxplot()


toPlotEye <- starwars %>%
  select(eye_color) %>%
  filter(!is.na(eye_color)) %>%
  count(eye_color)

ggplot(toPlotEye,aes(x="", y=n, fill = eye_color)) + geom_bar(stat="identity",width = 1) + coord_polar(theta="y",start=0)


toPlotHeightMass <- starwars %>%
  select(height,mass) %>%
  filter(!is.na(mass))                                                                                   


ggplot(toPlotHeightMass, aes(x=height,y=mass)) + geom_point()  


toPlotMassHeight <- starwars %>%
  select(height,mass, homeworld) %>%
  filter(!is.na(mass))     

ggplot(toPlotMassHeight, aes(x=height,y=mass,color=homeworld)) + geom_point()  
