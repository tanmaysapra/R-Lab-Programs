# Step 1: Install and load necessary packages
# Uncomment the line below if you don't have plotly installed yet
#install.packages("plotly")

library(ggplot2)
library(plotly)

# Load the built-in Iris dataset
data(iris)

# ==========================================
# Task 1 & 2: Static ggplot2 to Interactive
# ==========================================

# Create the static ggplot2 scatter plot and store it in an object
static_plot <- ggplot(data = iris, aes(x = Sepal.Width, y = Petal.Width, color = Species)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(
    title = "Static ggplot2: Sepal Width vs Petal Width",
    x = "Sepal Width",
    y = "Petal Width"
  )

# Convert the static ggplot2 object into an interactive Plotly graph
interactive_ggplot <- ggplotly(static_plot)

# Print it to the RStudio Viewer pane
print(interactive_ggplot)


# ==========================================
# Task 3: Interactive Plot Directly via Plotly
# ==========================================

# Create an interactive scatter plot directly using plot_ly()
interactive_plotly <- plot_ly(
  data = iris, 
  x = ~Sepal.Width, 
  y = ~Petal.Width, 
  color = ~Species, 
  type = "scatter", 
  mode = "markers",
  marker = list(size = 10, opacity = 0.7)
) %>%
  # Add the custom layout, labels, and tick suffixes
  layout(
    title = "Iris Data Set Visualization",
    xaxis = list(title = "Sepal Width", ticksuffix = "cm"),
    yaxis = list(title = "Petal Width", ticksuffix = "cm")
  )

# Print the direct Plotly graph to the RStudio Viewer pane
print(interactive_plotly)
