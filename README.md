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


## 2. Variables
Our project is designed to harness the rich insights of a comprehensive public dataset, featuring detailed attributes and quality assessments of wine samples from Minho, a renowned wine-producing region in north-west Portugal. The dataset encompasses an extensive period of data collection, from May 2004 to February 2007, and includes an impressive total of 6,498 records related to both red and white wine variants, dissected across 11 key attributes. This meticulous compilation offers an unparalleled opportunity to delve into the nuances that distinguish wine quality, presenting a foundation for robust analysis and potential advancements in wine science.
The dataset provides a granular look at the chemical composition and sensory attributes of wine, each variable casting light on its potential impact on overall quality. These attributes include:
- **Fixed Acidity** (numeric): Reflects the concentration of nonvolatile acids (such as tartaric acid) that remain fixed during winemaking and contribute to the wine's structure.
- **Volatile Acidity** (numeric): Measures the volatile acids (like acetic acid), where excessive levels can mar wine with an undesirable vinegar taste.
- **Citric Acid** (numeric): Although present in small amounts, citric acid can enhance the wine's freshness and flavor profile.
- **Residual Sugar** (numeric): Indicates the sugar level post-fermentation, affecting sweetness.
- **Chlorides** (numeric): The measure of salt content in wine, impacting taste.
- **Free Sulfur Dioxide** (numeric): Represents the portion of sulfur dioxide not bound to other molecules, crucial for preserving wine's freshness and inhibiting microbial growth.
- **Total Sulfur Dioxide** (numeric): The total concentration of sulfur dioxide, encompassing both free and bound forms, essential for wine longevity.
- **Density** (numeric): Reflects the wine's density, which correlates with its alcohol and sugar content.
- **pH** (numeric): A vital indicator of acidity, influencing taste, color, and stability.
- **Sulphates** (numeric): Pertains to added sulphates like potassium sulphate, affecting microbial stability and antioxidant properties.
- **Alcohol** (numeric): The alcohol percentage, directly influencing flavor and body.
- **Wine Type** (categorical): Distinguishes between red and white wine variants.
- **Quality** (discrete): An assessment of wine quality on a scale from 0 to 10, based on sensory evaluation.
  
The output variable, **quality**, scored between 0 and 10, is determined through sensory analysis, providing a subjective yet invaluable measure of each wine's overall excellence.

By exploring these attributes, our project aims not only to dissect the complex interplay of factors influencing wine quality but also to contribute valuable insights to the wine industry, enhancing our understanding of what makes a wine stand out. This endeavor stands as a testament to the power of data in unlocking the secrets of viticulture and oenology, guiding us towards the creation of superior wines that delight the senses.


## 3. Multivariate Statistical Methods

In our analysis of the wine dataset, we will employ several multivariate statistical techniques to uncover patterns, relationships, and structure from the complex interplay of variables. The dataset, comprising physicochemical properties and quality ratings of wine samples, presents a rich opportunity for such multivariate exploration. The methods we plan to use are as follows:

**a. Data Reduction or Structural Simplification:**

To distill the essence of our dataset and reduce its dimensionality without significant loss of information, we will apply PCA to transform the original variables into a smaller number of uncorrelated variables called principal components. This technique will help us visualize the structure of the data, identify patterns, and determine which variables contribute most to the variation in wine quality. We will also use factor analysis to identify latent variables that capture the underlying relationships between observed variables. By modeling the covariance structure, we can simplify the data into factors that represent the dataset's intrinsic properties, which may correspond to underlying chemical and sensory dimensions of wine quality.

**b. Grouping or Discrimination:**

To classify our observations into meaningful groups and discern the dataset's inherent structure, we will utilize Cluster Analysis to discover natural groupings or clusters within the wine samples based on their physicochemical attributes. Conduct Discriminant Analysis to determine which variables have the most significant impact on the categorical distinction between red and white wines. It will also allow us to develop a predictive model for classifying the wine type based on the measured attributes.

**c. Dependence Investigation:**

Calculate correlation coefficients to evaluate the strength and direction of the linear relationships between pairs of variables. We will also use Canonical Correlation Analysis (CCA) to study the relationship between two sets of variables (for instance, physicochemical properties versus sensory attributes). By exploring the correlations between these variable sets, we aim to capture the most significant overall correlations and derive insights into the multidimensional relationships within the dataset.

**d. Prediction or classification:**

Build a Multivariate Regression linear model to predict wines' quality scores based on their chemical properties. The significance and relative value for each linear coefficient will provide information on each factors' relative impact on the response variable (quality score).

**e. Hypothesis construction and testing:**

Use one-way MANOVA to test if some quality score share the same mean results (which could be due to different graders giving different scores to wines that share the same properties) and could be combine into one single category (test for mean equality and consider confidence intervals). Test if (and which) chemical properties interacts in a way that has a significant impact on quality score, if not, test if they are additive. Finally, test if there is a statistically significant difference in quality score depending on chemical properties.


Each of these methods will contribute to a comprehensive understanding of the dataset, guiding our further analysis and potential recommendations for the wine industry.
