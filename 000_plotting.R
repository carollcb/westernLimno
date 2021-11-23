basinNames <- c("10"="Missouri",
                "11"="Ark-Red-White",
                "12_13"="Texas-Rio Grande",
                "13"="Rio Grande",
                "14"="Upper Colorado",
                "15"="Lower Colorado",
                "16"="Great Basin",
                "17"="Pacific Northwest",
                "18"="California")


# New facet label names for 'nutrient' variables
basin.Names <- c("Missouri","Ark-Red-White", "Texas-Rio Grande", "Rio Grande",
                 "Upper Colorado","Lower Colorado","Great Basin","Pacific Northwest",
                 "California")
names(basin.Names) <- c("10","11","12_13","13","14","15","16","17","18")

epaCols <- c("N. Plains"="#7f4f24",
               "S. Plains"="#b6ad90",
               "Western Mtns"="#606c38",
               "Xeric"="#dda15e")

##Function for printing # of observations below each boxplot. 
give.n <- function(x){
  return(c(y = -0.5, label = length(x))) 
  # experiment with the multiplier to find the perfect position
}