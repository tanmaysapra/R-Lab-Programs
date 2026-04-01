# Step 1: Load the necessary packages
library(ggplot2)
library(patchwork)

# Step 2: Generate and save all plots to variables

# Plot 1: Create a scatter plot with a smoothed line
plot1 <- ggplot(data = midwest) + 
  geom_point(mapping = aes(x = percollege, y = percadultpoverty)) + 
  geom_smooth(mapping = aes(x = percollege, y = percadultpoverty)) +
  labs(title = "Smoothed Line")

# Plot 2: Use shared aesthetic mappings (with unique y mapping for second points)
plot2 <- ggplot(data = midwest, mapping = aes(x = percollege, y = percadultpoverty)) + 
  geom_point() +  # Uses default x and y mappings
  geom_smooth() + # Uses default x and y mappings
  geom_point(mapping = aes(y = percchildbelowpovert)) + # Unique y mapping
  labs(title = "Shared Aesthetics")

# Plot 3: Mapping data to color by state
plot3 <- ggplot(data = midwest) + 
  geom_point(mapping = aes(x = percollege, y = percadultpoverty, color = state)) +
  labs(title = "Colored by State")

# Plot 4: Setting a constant red color and transparency for all points
plot4 <- ggplot(data = midwest) + 
  geom_point(mapping = aes(x = percollege, y = percadultpoverty), 
             color = "red", 
             alpha = 0.3) +
  labs(title = "Constant Red & Transparency")

# Step 3: Arrange them all into a 2x2 grid and print!
combined_plots <- plot1 + plot2 + plot3 + plot4 + plot_layout(ncol = 2)

print(combined_plots)
