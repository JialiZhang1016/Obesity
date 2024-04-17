# Install packages
install.packages("tidyverse", dependencies = TRUE)
install.packages("readr", dependencies = TRUE)
install.packages("tidyr", dependencies = TRUE)
install.packages("lubridate", dependencies = TRUE)

# Load the CSV file
winedata <- read.csv("wine.csv")

# Get to know data

# dimension of data
dim(winedata) # 6497 rows x 13 variables

# features in data
names(winedata) 

# Get summary of all variables
summary(winedata)

# Categorical data visualization

# barplot
winedata$quality <- factor(winedata$quality)
ggplot(winedata, aes(x = quality)) + geom_bar(fill = "skyblue") + 
  labs(x = "quality", y = "count")

winedata$wine_type <- factor(winedata$wine_type)
ggplot(winedata, aes(x = wine_type)) + geom_bar(fill = "skyblue") + 
  labs(x = "type of wine", y = "count")

# Comments
# Most common wine type = white wine
# Most common quality grade = 6, 5, & 7

# Get the frequency table
quality_table <- table(winedata$quality)
type_table <- table(winedata$wine_type)

# View the frequency table
print(quality_table)
print(type_table)

# Quantitative data visualization

# histogram
ggplot(winedata, aes(x = fixed.acidity)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "fixed acidity", y = "count") + theme_minimal()

ggplot(winedata, aes(x = volatile.acidity)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "volatile acidity", y = "count") + theme_minimal()

ggplot(winedata, aes(x = citric.acid)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "citric acid", y = "count") + theme_minimal()

ggplot(winedata, aes(x = residual.sugar)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "residual sugar", y = "count") + theme_minimal()

ggplot(winedata, aes(x = chlorides)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "chlorides", y = "count") + theme_minimal()

ggplot(winedata, aes(x = free.sulfur.dioxide)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "free sulfur dioxide", y = "count") + theme_minimal()

ggplot(winedata, aes(x = total.sulfur.dioxide)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "total sulfur dioxide", y = "count") + theme_minimal()

ggplot(winedata, aes(x = density)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = " ", y = "count") + theme_minimal()

ggplot(winedata, aes(x = density)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "density", y = "count") + theme_minimal()

ggplot(winedata, aes(x = pH)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "pH", y = "count") + theme_minimal()

ggplot(winedata, aes(x = sulphates)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "sulphates", y = "count") + theme_minimal()

ggplot(winedata, aes(x = alcohol)) +
  geom_histogram(color = "white", fill = "skyblue") +
  labs(x = "alcohol", y = "count") + theme_minimal()

# density plots
ggplot(winedata, aes(x = fixed.acidity)) +
  geom_density() +
  labs(title = "Density Plot", x = "fixed acidity") +
  theme_minimal()

# boxplot
ggplot(winedata, aes(x = fixed.acidity)) + geom_boxplot() +
  labs(title = "Box Plot of fixed acidity", x = "fixed acidity") +
  theme_minimal()

ggplot(winedata, aes(x = volatile.acidity)) + geom_boxplot() +
  labs(title = "Box Plot of volatile.acidity", x = "volatile.acidity") + theme_minimal()

ggplot(winedata, aes(x = citric.acid)) + geom_boxplot() +
  labs(title = "Box Plot of citric.acid", x = "citric.acid") + theme_minimal()

ggplot(winedata, aes(x = residual.sugar)) + geom_boxplot() +
  labs(title = "Box Plot of residual.sugar", x = "residual.sugar") + theme_minimal()

ggplot(winedata, aes(x = chlorides)) + geom_boxplot() +
  labs(title = "Box Plot of chlorides", x = "chlorides") + theme_minimal()

ggplot(winedata, aes(x = free.sulfur.dioxide)) + geom_boxplot() +
  labs(title = "Box Plot of free.sulfur.dioxide", x = "free.sulfur.dioxide") + theme_minimal()

ggplot(winedata, aes(x = total.sulfur.dioxide)) + geom_boxplot() +
  labs(title = "Box Plot of total sulfur dioxide", x = "total.sulfur.dioxide") + theme_minimal()

ggplot(winedata, aes(x = density)) + geom_boxplot() +
  labs(title = "Box Plot of density", x = "density") + theme_minimal()

ggplot(winedata, aes(x = pH)) + geom_boxplot() +
  labs(title = "Box Plot of pH", x = "pH") + theme_minimal()

ggplot(winedata, aes(x = sulphates)) + geom_boxplot() +
  labs(title = "Box Plot of sulphates", x = "sulphates") + theme_minimal()

ggplot(winedata, aes(x = alcohol)) + geom_boxplot() +
  labs(title = "Box Plot of alcohol", x = "alcohol") + theme_minimal()# Correlation matrix

# correlation matrix
subset_winedata <- winedata[, 1:10]
cor(subset_winedata)