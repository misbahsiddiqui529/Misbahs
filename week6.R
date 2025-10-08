# Load tidyverse library
library(tidyverse)

# Read the dataset
data <- read_csv("openpowerlifting.csv")

# Preview the dataset
glimpse(data)


# Histogram of BodyweightKg

ggplot(data, aes(x = BodyweightKg)) +
  geom_histogram(binwidth = 5, fill = "white", color = "black") +
  labs(title = "Distribution of Bodyweight", x = "Bodyweight (Kg)", y = "Count") +
  theme_minimal()

# Scatter plot: Best Squat vs Best Bench by Sex

ggplot(data, aes(x = BestSquatKg, y = BestBenchKg, color = Sex)) +
  geom_point(alpha = 0.6) +
  labs(title = "Best Squat vs Best Bench by Sex", x = "Best Squat (Kg)", y = "Best Bench (Kg)") +
  theme_minimal()

# Boxplot of TotalKg by Equipment
ggplot(data, aes(x = Equipment, y = TotalKg, fill = Equipment)) +
  geom_boxplot() +
  labs(title = "Total Lift by Equipment Type", x = "Equipment", y = "Total Lift (Kg)") +
  theme_minimal()


