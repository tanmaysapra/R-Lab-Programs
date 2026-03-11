# Step 1: Load the Required Library
library(dplyr)

# Step 2: Create the Donors Dataset
donors <- data.frame(
  DonorName = c("Alice Walton", "Jacqueline Mars", "Maria Franca Fissolo", 
                "Susanne Klatten", "Laurene Powell Jobs", "Francoise Bettencourt Meyers"),
  Email = c("alice.walton@gmail.com", "jacqueline.mars@gmail.com", "maria.franca.fissolo@gmail.com", 
            "susanne.klatten@gmail.com", "laurene.powell.jobs@gmail.com", "francoise.bettencourt.meyers@gmail.com"),
  stringsAsFactors = FALSE
)

# Step 3: Create the Donations Dataset
donations <- data.frame(
  DonorName = c("Maria Franca Fissolo", "Yang Huiyan", "Maria Franca Fissolo", "Alice Walton", "Yang Huiyan"),
  Amount = c(100, 50, 75, 25, 150),
  Date = c("2018-02-15", "2018-02-15", "2018-02-15", "2018-02-16", "2018-02-18"),
  stringsAsFactors = FALSE
)

# Step 4: Perform a Left Join
left_join_result <- left_join(donors, donations, by = "DonorName")
print("Left Join Result:")
print(left_join_result)

# Step 5: Perform a Right Join
right_join_result <- right_join(donors, donations, by = "DonorName")
print("Right Join Result:")
print(right_join_result)

# Step 6: Perform an Inner Join
inner_join_result <- inner_join(donors, donations, by = "DonorName")
print("Inner Join Result:")
print(inner_join_result)

# Step 7: Perform an Outer Join (Full Join)
outer_join_result <- full_join(donors, donations, by = "DonorName")
print("Outer Join Result:")
print(outer_join_result)