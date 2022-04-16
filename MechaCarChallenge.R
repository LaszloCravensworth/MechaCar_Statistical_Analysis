################################################################################
# DELIVERABLE 1
################################################################################

# Install libraries
library(dplyr)
library(tidyverse)

# Import and Read CSV file as a dataframe
mpg_data <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Linear Regression function
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_data)
mecha_lm

# Summary function for p-value and r-square value for linear regression model
mecha_sum <- summary(mecha_lm)
mecha_sum

################################################################################
# DELIVERABLE 2
################################################################################

# Import and Read CSV file as a dataframe
suspension_data <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Use summarize function
total_summary <- suspension_data %>% summarize(psi_mean = mean(PSI), psi_median = median(PSI), psi_var = var(PSI), psi_sd = sd(PSI))
total_summary

# Use group_by and summarize function
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(psi_mean = mean(PSI), psi_median = median(PSI), psi_var = var(PSI), psi_sd = sd(PSI), .groups = 'keep')
lot_summary

################################################################################
# DELIVERABLE 3
################################################################################

# Use t.test function
t.test(suspension_data$PSI, mu=1500)

# t.test function on Lots 1 through 3 using subset argument:

# Lot 1
t.test(subset(suspension_data,Manufacturing_Lot == "Lot1")$PSI, mu=1500)

# Lot 2
t.test(subset(suspension_data,Manufacturing_Lot == "Lot2")$PSI, mu=1500)

# Lot 3
t.test(subset(suspension_data,Manufacturing_Lot == "Lot3")$PSI, mu=1500)
