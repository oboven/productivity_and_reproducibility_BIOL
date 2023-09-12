#load required packages

library(palmerpenguins) 
library(tidyverse)

#ensure working directory is set to "productivity_and_reproducibility_BIOL", the base of the rproject
#write a csv of the desired dataset (in this case, "penguins" from palmer penguins) to the designated location

write_csv(penguins, "./00_rawdata/penguins.csv")
