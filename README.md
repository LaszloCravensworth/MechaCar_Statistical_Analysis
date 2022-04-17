# MechaCar_Statistical_Analysis

## Overview of Project
&nbsp;&nbsp;&nbsp; AutosRUs' newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team's progress.  AutosRUs upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.  The data analytics team has been assigned to:

*Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

*Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

*Run t-tests to determine if the manufacturing lots are statistically different from the mean population

*Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Resources
&nbsp;&nbsp;&nbsp;* Data Source: MechaCar_mpg.csv, Suspension_Coil.csv
<br />
&nbsp;&nbsp;&nbsp;* Software: R Language

## Linear Regression to Predict MPG

![lm](https://github.com/LaszloCravensworth/MechaCar_Statistical_Analysis/blob/main/analysis_pngs/MechaCar_lm.png)
<br />

&nbsp;&nbsp;&nbsp;The variables/coefficients that had a non-random amount of variance to the mpg were the vehicle_length and the ground_clearance.  The slope is not considered to be zero because there is a significant relationship between some independent variables and the dependent variable.  The linear model does predict the mpg of MechaCar prototypes effectively because the R-squared value is 0.7149.  An R-squared value of 1 would predict the model with high certitude and conviction.

![summary](https://github.com/LaszloCravensworth/MechaCar_Statistical_Analysis/blob/main/analysis_pngs/MechaCar_summary.png)

## Summary Statistics on Suspension Coils

&nbsp;&nbsp;&nbsp;The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  Judging by the total_summary dataframe, it is clear that the variance comes in at 62.29356 so it does not exceed the 100 psi. 

![total_summary](https://github.com/LaszloCravensworth/MechaCar_Statistical_Analysis/blob/main/analysis_pngs/total_summary_df.png)

&nbsp;&nbsp;&nbsp;Taking a look at the individual lots in the lot_summary dataframe it appears that lots 1 and 2 meet the design specifications.  Lot 1 has a variance of 0.98 and lot 2 of 7.47.  Lot 3's variance far exceeds the specifications at 170.29.

![lot_summary](https://github.com/LaszloCravensworth/MechaCar_Statistical_Analysis/blob/main/analysis_pngs/lot_summary_df.png)

## T-Tests on Suspension Coils

### All 3 lots:

&nbsp;&nbsp;&nbsp; When determining if all manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch, it is evident from a p-value of 0.06028 that there is no statistical difference between the psi and the population mean.

![ttest_all](https://github.com/LaszloCravensworth/MechaCar_Statistical_Analysis/blob/main/analysis_pngs/t_test_all.png)

### Lot 1:

&nbsp;&nbsp;&nbsp; With a p-value of 1, it shows in Lot 1 that there is no statistical difference between the psi and the population mean of 1500 psi.

![lot_1](https://github.com/LaszloCravensworth/MechaCar_Statistical_Analysis/blob/main/analysis_pngs/t_test_lot1.png)

### Lot 2:

&nbsp;&nbsp;&nbsp; With a p-value of 0.6072, it shows in Lot 2 that there is no statistical difference between the psi and the population mean of 1500 psi.

![lot_2](https://github.com/LaszloCravensworth/MechaCar_Statistical_Analysis/blob/main/analysis_pngs/t_test_lot2.png)

### Lot 3:

&nbsp;&nbsp;&nbsp; With a p-value of 0.04168, it shows in Lot 3 that there is a statistical difference between the psi and the population mean of 1500 psi.

![lot_3](https://github.com/LaszloCravensworth/MechaCar_Statistical_Analysis/blob/main/analysis_pngs/t_test_lot3.png)

## Study Design: MechaCar vs Competition - Safety Rating

&nbsp;&nbsp;&nbsp; Great designs sometimes cut corners on safety.  Over the years we've seen safety performance come to be a huge topic from autonomous vehicles, batteries, crash tests, etc... After all, what good is a car that doesn't protect the safety of its passengers and those around it?

### Metric to test:
&nbsp;&nbsp;&nbsp;* Mechanical failures after x amount of miles

### Null Hypothesis:
&nbsp;&nbsp;&nbsp;* Vehicles with similar structure and design have the same safety performance.

### Alternative Hypothesis:
&nbsp;&nbsp;&nbsp;* Vehicles with similar structure and design do not have the same safety perfomance.

### Statistical Test:
&nbsp;&nbsp;&nbsp;* With this test there are many factors that could come into play so using a Manova statistical test would be most beneficial.

### Data Needed To Run The Statistical Test:

&nbsp;&nbsp;&nbsp;* The data require for this statistical test would require multiple factors from a large sample population.

