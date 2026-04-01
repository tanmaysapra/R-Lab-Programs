
install.packages("patchwork")

library(ggplot2)
library(patchwork) 

# Step 2: Create a sample data frame
data <- data.frame(
  a = 1:10,
  b = rnorm(10),
  label = letters[11:20]
)

# Step 3: Generate and save all plots to variables (Notice we don't print them individually here)

# 3.1.1: Scatter plot
plot1 <- ggplot(data = data, aes(x = a, y = b)) +
  geom_point() +
  labs(title = "Scatter Plot", x = "X-axis", y = "Y-axis")

# 3.1.2: Scatter plot with color customizations 
plot2 <- ggplot(data = data, aes(x = a, y = b)) +
  geom_point(color = "forestgreen", size = 1) +
  labs(title = "Color Customization", x = "X-axis", y = "Y-axis")

# 3.1.3: Scatter plot with text labels and colors
plot3 <- ggplot(data = data, aes(x = a, y = b)) +
  geom_point(color = "forestgreen", size = 3) +
  geom_text(aes(label = label), vjust = -1, color = "blue") +
  labs(title = "Text Labels", x = "X-axis", y = "Y-axis")

# 3.1.4: Scatter plot with a smooth line
plot4 <- ggplot(data = data, aes(x = a, y = b)) +
  geom_point(color = "forestgreen", size = 1) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Smooth Line", x = "X-axis", y = "Y-axis")

# 3.2: Line plot
plot5 <- ggplot(data = data, aes(x = a, y = b)) +
  geom_line(color = "red", linewidth = 1) + 
  labs(title = "Line Plot", x = "X-axis", y = "Y-axis")

# 3.3: Bar plot
plot6 <- ggplot(data = data, aes(x = a, y = b)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Bar Plot", x = "X-axis", y = "Values")

# Step 4: Arrange them all into a grid and print!
# The plot_layout(ncol = 2) tells it to display them in 2 columns
combined_plots <- plot1 + plot2 + plot3 + plot4 + plot5 + plot6 + plot_layout(ncol = 2)

print(combined_plots)
