# load necessary library 
library(palmerpenguins)
penguins <- palmerpenguins::penguins
# inspect the data 
head(penguins)

## Task 1 Calculate Summary Statistics
numeric_means <- apply(penguins[, sapply(penguins,is.numeric)], 2, mean, na.rm = TRUE )
print(numeric_means)

## Task 2 Count Penguins by Species 
species_counts <- tapply(penguins$species, penguins$species, length)
print(species_counts)

## Task 3 Analyze Bill Length by Species
bill_length_means <- lapply(split(penguins$bill_length_mm, penguins$species),
                            mean, na.rm = TRUE)
print(bill_length_means)

## Task 4 Create a summary table 
summary_table <- sapply(penguins[, sapply(penguins, is.numeric)], function(x)
  c(mean = mean(x, na.rm = TRUE), sd = sd(x, na.rm = TRUE)))
print(summary_table)
