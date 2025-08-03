# =============================================================================
# AI AND OMICS RESEARCH INTERNSHIP 2025 - MODULE I: CLASS IB SCRIPT
# =============================================================================

# ----------------------------
# 1. PROJECT SETUP (TASK 1-2)
# ----------------------------
# Creates organized folder structure for the project
dir.create("raw_data")    # For original/raw datasets
dir.create("clean_data")  # For processed/cleaned data
dir.create("scripts")     # For R scripts like this one
dir.create("results")     # For analysis outputs
dir.create("plots")       # For visualizations

# ----------------------------
# 2. DATA IMPORT (TASK 3)
# ----------------------------
# Load dataset using file picker (for local testing)
data <- read.csv(file.choose())  

# Inspect data structure and contents
str(data)  # Check variable types and structure
View(data) # View data in spreadsheet format

# ----------------------------
# 3. DATA CLEANING (TASK 3)
# ----------------------------
# Convert gender to factor with numeric encoding (Female=0, Male=1)
data$gender_fac <- as.factor(data$gender)
data$gender_num <- factor(data$gender_fac,
                          levels = c("Female", "Male"),
                          labels = c(0, 1))

# Convert diagnosis to factor with numeric encoding (Cancer=0, Normal=1)
data$diagnosis_fac <- as.factor(data$diagnosis)
data$diagnosis_num <- factor(data$diagnosis_fac,
                             levels = c("Cancer", "Normal"),
                             labels = c(0, 1))

# Convert smoker to factor with binary encoding (No=0, Yes=1)
data$smoker_fac <- as.factor(data$smoker)
data$smoker_num <- factor(data$smoker_fac,
                          levels = c("No", "Yes"),
                          labels = c(0, 1))

# ----------------------------
# 4. SAVE OUTPUTS (TASK 3)
# ----------------------------
# Save cleaned data to CSV
write.csv(data, file = "clean_data/patient_info_clean.csv")

# Save entire workspace (optional)
save.image(file = "scripts/class_Ib.RData")

# =============================================================================
# HOW TO USE THIS SCRIPT:
# 1. Set working directory to your project folder first
# 2. Run entire script
# 3. Manually save this script as "scripts/class_Ib.R" via RStudio's File menu
# 4. Upload to GitHub repository
# =============================================================================
# -----------------------------------------------------------------------------