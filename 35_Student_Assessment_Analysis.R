# 0) File names
input_csv <- "students_input.csv"
students_rank_csv <- "students_by_rank.csv"
assessment_avg_csv <- "assessment_wise_averages.csv"
specialization_avg_csv <- "specialization_wise_averages.csv"

# Task 1 - Create Vectors
RegNo <- c("24BCE1001","24BCE1002","24BCE1003","24BCE1004","24BCE1005", "24BCE1006","24BCE1007","24BCE1008","24BCE1009","24BCE1010")
Name <- c("Aadesh Kumar", "Bhavya Reddy", "Charan Iyer", "Divya Sharma", "Esha Nair", "Farhan Khan","Gayathri Raj", "Harish Kumar", "Ishita Menon", "Jai Verma")
Programme <- rep("B.Tech", 10)
Specialization <- c("CSE","AI","DS","IT","CSE", "ECE", "Cyber", "AI","DS","IT")
Assess1 <- c(18,15,20,14,20,12,17,16,19,18)
Assess2 <- c(17,16,19,15,20,14,18,17,18,17)
Assess3 <- c(19,14,18,15,19,13,17,16,19,16)
Assess4 <- c(18,18,20,16,20,16,19,15,18,19)

# Create Data Frame
students <- data.frame(
  RegNo, Name, Programme, Specialization, Assess1, Assess2, Assess3, Assess4,
  stringsAsFactors = FALSE
)

str(students)
head(students)

# Task 2 - Write Input CSV
write.csv(students, file = input_csv, row.names = FALSE, na = "")
cat("Input CSV written:", normalizePath(input_csv, winslash = "/"), "\n")

# Task 3 - Read CSV for Analytics
students_in <- read.csv(input_csv, stringsAsFactors = FALSE)

# Validate required columns
assessment_cols <- c("Assess1","Assess2","Assess3","Assess4")
required_cols <- c("RegNo","Name", "Programme", "Specialization", assessment_cols)

missing <- setdiff(required_cols, names(students_in))
if(length(missing) > 0){
  stop("Missing columns: ", paste(missing, collapse = ", "))
}

for(col in assessment_cols) {
  if(!is.numeric(students_in[[col]])) {
    students_in[[col]] <- as.numeric(students_in[[col]])
  }
}

# Task 4 - Per Student Analytics
students_in$Total <- rowSums(students_in[, assessment_cols], na.rm = TRUE)
students_in$Average <- students_in$Total / length(assessment_cols)
students_in$Rank <- rank(-students_in$Total, ties.method = "min")

students_by_rank <- students_in[order(students_in$Rank, students_in$RegNo), ]
write.csv(students_by_rank, file = students_rank_csv, row.names = FALSE, na="")
cat("Students by rank CSV:", normalizePath(students_rank_csv, winslash = "/"), "\n")

# Task 5 - Assessment Wise Averages
assessment_avg <- colMeans(students_in[, assessment_cols], na.rm = TRUE)
assessment_avg_df <- data.frame(
  Assessment = names(assessment_avg),
  Average = as.numeric(assessment_avg),
  stringsAsFactors = FALSE
)

write.csv(assessment_avg_df, file = assessment_avg_csv, row.names = FALSE, na = "")
cat("Assessment-wise averages CSV:", normalizePath(assessment_avg_csv, winslash = "/"), "\n")

# Task 6 - Specialization Wise Averages
specialization_avg <- aggregate(
  students_in[, assessment_cols],
  by = list(Specialization = students_in$Specialization),
  FUN = function(x) mean(x, na.rm = TRUE)
)

specialization_avg$Overall_Average <- rowMeans(specialization_avg[, assessment_cols], na.rm = TRUE)
specialization_avg <- specialization_avg[order(-specialization_avg$Overall_Average), ]

write.csv(specialization_avg, file = specialization_avg_csv, row.names = FALSE, na="")
cat("Specialization-wise averages CSV:", normalizePath(specialization_avg_csv, winslash = "/"), "\n")