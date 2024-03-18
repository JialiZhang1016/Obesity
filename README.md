# Wine Dataset Analysis Project for STAT 6545

This document outlines the proposal for a data analysis project conducted as a final project for **STAT 6545**. Below are the names of the team members who will collaboratively work on this project:

- **Jiali Zhang**
- **Maddie Perez**
- **Jarrad Botchway**

The project will involve comprehensive data analysis employing various statistical methods to extract meaningful insights and conclusions from the provided dataset. The following sections will detail the specific analyses proposed and the expected outcomes of this collaborative effort.

To directly access the dataset we are analyzing, you can visit [Wine Dataset in our GitHub Repository](https://github.com/JialiZhang1016/Wine/blob/main/wine.csv).

For reference, the dataset originates from the following citation: Cortez, Paulo, Cerdeira, A., Almeida, F., Matos, T., & Reis, J. (2009). Wine Quality. UCI Machine Learning Repository. [https://doi.org/10.24432/C56S3T](https://doi.org/10.24432/C56S3T).

The project utilizes two datasets related to red and white variants of Portuguese "Vinho Verde" wine. The datasets include the following:
- Number of Instances: red wine - 1599; white wine - 4898
- Number of Attributes: 11 + output attribute

We used the following R code to combine the two datasets together:

```R
red_wine <- read.csv("winequality-red.csv", sep = ";") 
white_wine <- read.csv("winequality-white.csv", sep = ";")

red_wine$wine_type <- 'red'
white_wine$wine_type <- 'white'

combined_wine <- rbind(red_wine, white_wine)
write.csv(combined_wine, "wine.csv", row.names = FALSE)
```


## 1. Problem background and importance 
Wine is a product that can vary in price and in quality ; some varieties are akin to cheap consummers goods while others are luxury products. In that context, it can be hard for consummers to identify which are more appropriate for certain occasions, or which are worth spending more or less money on ; similarly, for producers, the task of setting up a price can be made harder. 
On both sides, certifications are very important and thus, there is a real need to build trustworthy models to evaluate wines quality: it would bring clarity to consumers and recognition to producers. Moreover, by identifying the most important factors, the latter could turn their focus on these aspects and find more efficient ways to improve their wine's rating. 


## 2. Variables (Need to change, Jarrad)
This project leverages a comprehensive public dataset to examine obesity levels across individuals from Mexico, Peru, and Colombia. The data was meticulously gathered through an online survey platform, where participants anonymously responded to 16 meticulously designed questions focused on their dietary habits and physical health. The dataset encapsulates responses from individuals aged between 14 and 51 years, resulting in a rich compilation of 2,111 records spanning 17 distinct variables. Each variable offers valuable insights into factors that potentially influence obesity levels:

1. **Gender**: Categorical variable indicating the participant's biological sex (Male or Female).
2. **Age**: Numerical variable denoting the age of the participant in years, providing insight into age-related trends in obesity.
3. **Height**: Numerical variable measured in meters, contributing to BMI calculations and obesity analysis.
4. **Weight**: Numerical variable in kilograms, crucial for determining the participant's obesity level.
5. **Family History of Overweight**: Categorical variable indicating whether the participant has a family history of overweight or obesity (Yes or No), highlighting genetic predispositions.
6. **FAVC (Frequently Consumed High-Calorie Food)**: Categorical variable revealing if the participant regularly consumes high-calorie foods (Yes or No), shedding light on dietary habits.
7. **FCVC (Frequency of Consumption of Vegetables)**: Ordinal variable depicting the frequency of vegetable consumption (1 = Never, 2 = Sometimes, 3 = Always), indicating dietary preferences.
8. **NCP (Number of Main Meals)**: Ordinal variable indicating the number of main meals per day (1 = Between 1 and 2, 2 = Three, 3 = More than three, 4 = No answer), reflecting eating patterns.
9. **CAEC (Consumption of Food Between Meals)**: Ordinal variable showing snacking frequency (1 = No, 2 = Sometimes, 3 = Frequently, 4 = Always), which can influence weight.
10. **SMOKE**: Categorical variable indicating smoking status (Yes or No), as smoking can affect metabolism.
11. **CH2O (Consumption of Water Daily)**: Ordinal variable showing daily water intake (1 = Less than a liter, 2 = Between 1 and 2 L, 3 = More than 2 L), important for healthy weight management.
12. **SCC (Monitor Calorie Intake)**: Categorical variable revealing whether the participant tracks their caloric intake (Yes or No), indicating awareness of dietary intake.
13. **FAF (Frequency of Physical Activity)**: Ordinal variable depicting the frequency of physical activity (1 = Never, 2 = Once or twice a week, 3 = Two or three times a week, 4 = Four or five times a week), crucial for energy balance.
14. **TUE (Time Using Electronic Devices)**: Ordinal variable indicating the duration of electronic device use (0 = None, 1 = Less than an hour, 2 = Between one and three hours, 3 = More than three hours), relevant in assessing sedentary behaviors.
15. **CALC (Consumption of Alcohol)**: Ordinal variable showing the frequency of alcohol consumption (1 = No, 2 = Sometimes, 3 = Frequently, 4 = Always), which can influence weight and health.
16. **MTRANS (Type of Transportation Used)**: Categorical variable indicating the mode of transportation (Automobile, Motorbike, Bike, Public Transportation, Walking), reflecting on physical activity levels.
17. **NObesity (Level of Obesity According to Body Mass Index)**: Ordinal variable categorizing obesity level based on BMI (Insufficient Weight, Normal Weight, Overweight Level I, Overweight Level II, Obesity Type I, Obesity Type II, Obesity Type III), serving as the primary outcome of interest.

This dataset provides a multidimensional view into the lifestyle and health factors that contribute to obesity, making it a valuable resource for identifying potential interventions and promoting healthier communities.

## 3. Method (Need to change, Jiali, Maddie)

**a. Data Reduction or Structural Simplification:**


**b. Grouping or Discrimination:**


**c. Dependence Investigation:**


**d. Prediction or classification:**

Build a Multivariate Regression linear model to predict wines' quality scores based on their chemical properties. The significance and relative value for each linear coefficient will provide information on each factors' relative impact on the response variable (quality score).

**e. Hypothesis construction and testing:**

Use one-way MANOVA to test if some quality score share the same mean results (which could be due to different graders giving different scores to wines that share the same properties) and could be combine into one single category (test for mean equality and consider confidence intervals). Test if (and which) chemical properties interacts in a way that has a significant impact on quality score, if not, test if they are additive. Finally, test if there is a statistically significant difference in quality score depending on chemical properties.
