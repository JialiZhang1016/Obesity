# Wine Dataset Analysis Project for STAT 6545

This document outlines the proposal for a data analysis project conducted as a final project for **STAT 6545**. Below are the names of the team members who will collaboratively work on this project:

- **Jiali Zhang**
- **Maddie Perez**
- **Jarrad Botchway**

The project will involve comprehensive data analysis employing various statistical methods to extract meaningful insights and conclusions from the provided dataset. The following sections will detail the specific analyses proposed and the expected outcomes of this collaborative effort.

For further details on our project's scope, methodologies, and updates, please visit our project repository on GitHub: [GitHub Repository: Red Wine Quality](https://github.com/JialiZhang1016/Wine)

To directly access the dataset we are analyzing, you can visit the following link: [Wine Dataset on Kaggle](https://www.kaggle.com/datasets/uciml/red-wine-quality-cortez-et-al-2009)

## 1. Problem background and importance (Need to change, Maddie)
Obesity is a growing and widespread issue, that has been proven to be an important risk factor for health conditions, such as heart diceases, hypertension and cancer. This affections often necessitate lifelong treatments and, in some cases, lead to early death. Being able to predict which habits are most likely to lead to obesity, and their importance, would be benefitial to both the patients suffering from obesity, as well as the general population. 
It would allow the patients to identify the areas where they can make changes and estimate how impactful these modifications can be. When it comes to the general population, the benefits would be even greater: they would be able to estimate if their habits are likely to lead to obesity and at what level; enabling them to take on new habits before their health becomes concerning. 
We will also be able to detect if a person is underweight, which can be linked to equally damaging health issues. However, we will not be able to offer a more nuanced diagnostic (give levels) in that case.
In the end, the overall stake is to avoid patients to suffer from non-reversible health conditions.

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

Build a Multivariate Regression linear model to predict obesity level (Insufficient Weight, Normal Weight, Overweight Level I, Overweight Level II, Obesity Type I, Obesity Type II and Obesity Type III) based on the lifestyle and health factors identified as most significant. The significance and relative value for each linear coefficient will provide information on each factors their relative impact on the response variable (obesity level).

**e. Hypothesis construction and testing:**

Use one-way MANOVA to test if some obesity levels share the same mean results and could be combine into one single category (test for mean equality and consider confidence intervals), test if and which lifestyle and health factors interaction have a significant impact on obesity level and which are additive, test if there is a statistically significant difference in obesity level depending on lifestyle and health factors.
