# Step 1: Install and load the ggplot2 package
# Uncomment the line below if you don't have ggplot2 installed yet
# install.packages("ggplot2")
library(ggplot2)

# Step 2: Create a dataframe for the given dataset
plant_data <- data.frame(
  Plant_ID = c(1, 2, 3, 4, 5),
  Growth_Rate = c(3.2, 1.8, 2.6, 0.9, 3.8),
  Condition_Label = c("Sunny", "Shade", "Rainy", "Drought", "Cloudy")
)

# Step 3: Create the scatter plot
plant_plot <- ggplot(data = plant_data, aes(x = Plant_ID, y = Growth_Rate)) +
  # Points in dodgerblue with size 4
  geom_point(color = "dodgerblue", size = 4) +
  # Text labels positioned below the points (vjust = 1.5 nudges them down) in darkorange
  geom_text(aes(label = Condition_Label), vjust = 1.5, color = "darkorange") +
  # Add appropriate axis labels and title
  labs(
    title = "Scatter Plot of Plant Growth Data",
    x = "Plant ID",
    y = "Growth Rate"
  )

# Print the plot so it appears in your Plots pane
print(plant_plot)
