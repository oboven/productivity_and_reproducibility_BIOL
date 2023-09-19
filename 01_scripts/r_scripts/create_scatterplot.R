#This script plots bill length versus depth for the three species of the *palmerpenguins* dataset

#install the below packages if they are not already installed 
library(palmerpenguins)

#create a dataframe indicating which colour each species should appear on the plot

colours <- data.frame (species  = c("Adelie", "Chinstrap", "Gentoo"),
                       color = c("darkorange", "blue", "cyan2")
)

#join this new dataframe to the penguins dataframe 

penguins_col <- merge(x=penguins, y=colours, by="species", all.x=TRUE)
  
#create a simple scatter plot, with species distinguished by colour

plot(penguins_col$bill_depth_mm, penguins_col$bill_length_mm, pch=16, col= penguins_col$color, xlab = "Bill depth (mm)", ylab = "Bill length (mm)")

