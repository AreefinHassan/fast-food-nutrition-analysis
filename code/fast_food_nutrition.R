install.packages("readxl")
library(readxl)
setwd("C:/Users/areef/OneDrive - The University of Texas-Rio Grande Valley/Introduction To Data science/Homework/HW-1")

fast_food_nutrition = read_excel("data/fast_foods_nutritional_information.xlsx")
str(fast_food_nutrition)




#number of rows
num_rows <- nrow(fast_food_nutrition)
print(paste("The dataset has", num_rows, "rows."))

#unique restaurant

unique_restaurants <- unique(fast_food_nutrition$restaurant)
num_unique_restaurants <- length(unique_restaurants)
print(paste("The dataset contains", num_unique_restaurants, "unique restaurants."))

unique_food_types <- unique(fast_food_nutrition$type)
num_unique_food_types <- length(unique_food_types)
print(paste("The dataset contains", num_unique_food_types, "different types of food."))

average_calories <- mean(fast_food_nutrition$calories, na.rm = TRUE)
rounded_average_calories <- round(average_calories)
print(paste("The average number of calories is", rounded_average_calories, "when rounded to the nearest whole number."))

smallest_serving_size <- min(fast_food_nutrition$serving_size, na.rm = TRUE)
print(paste("The smallest serving size is", smallest_serving_size))

#  the index of the row with the highest sodium content
index_max_sodium <- which.max(fast_food_nutrition$sodium)

# the food item and sodium content at that index
food_with_max_sodium <- fast_food_nutrition$item[index_max_sodium]
max_sodium_content <- fast_food_nutrition$sodium[index_max_sodium]

#  the results
print(paste("The food item with the highest amount of sodium is", food_with_max_sodium, "with", max_sodium_content, "mg of sodium."))



total_calories <- sum(fast_food_nutrition$calories, na.rm = TRUE)
print(paste("If we ate every menu item on the list, you would consume", total_calories, "calories."))

# the index of the row with the highest sugar content
index_max_sugar <- which.max(fast_food_nutrition$sugars)

# the food item and sugar content at that index
food_with_max_sugar <- fast_food_nutrition$item[index_max_sugar]
max_sugar_content <- fast_food_nutrition$sugars[index_max_sugar]

#  the results
print(paste("The food item with the highest amount of sugar is", food_with_max_sugar, "with", max_sugar_content, "g of sugar."))


# Calculating the average amount of sugar
average_sugar <- mean(fast_food_nutrition$sugars, na.rm = TRUE)

# Calculating the standard deviation of the amount of sugar
std_dev_sugar <- sd(fast_food_nutrition$sugars, na.rm = TRUE)

# the results
print(paste("The average amount of sugar is", round(average_sugar, 2), "g."))
print(paste("The standard deviation of the amount of sugar is", round(std_dev_sugar, 2), "g."))


# Calculating the average amount of sodium
average_sodium <- mean(fast_food_nutrition$sodium, na.rm = TRUE)

# Calculating the standard deviation of the amount of sodium
std_dev_sodium <- sd(fast_food_nutrition$sodium, na.rm = TRUE)

#  the results
print(paste("The average amount of sodium is", round(average_sodium, 2), "mg."))
print(paste("The standard deviation of the amount of sodium is", round(std_dev_sodium, 2), "mg."))


# Count the number of milkshakes in the 'item' column
num_milkshakes <- sum(grepl("Milkshake", fast_food_nutrition$type, ignore.case = TRUE))

# Print the result
print(paste("The dataset contains", num_milkshakes, "Milkshake"))


install.packages("dplyr")

# Load the dplyr package
library(dplyr)

# Generate the table
calories_stats_table <- fast_food_nutrition %>%
  group_by(type) %>%
  summarise(
    Average_Calories = mean(calories, na.rm = TRUE),
    Std_Dev_Calories = sd(calories, na.rm = TRUE),
    Min_Calories = min(calories, na.rm = TRUE),
    Restaurant_Min_Calories = restaurant[which.min(calories)],
    Max_Calories = max(calories, na.rm = TRUE),
    Restaurant_Max_Calories = restaurant[which.max(calories)]
  )

# Print the table
print(calories_stats_table)





# Generating the table
max_calories_table <- fast_food_nutrition %>%
  group_by(restaurant) %>%
  summarise(
    Maximum_Calories = max(calories, na.rm = TRUE),
    Food_Max_Calories = item[which.max(calories)]
  ) %>%
  arrange(desc(Maximum_Calories))  # Optional: arrange the table by Maximum_Calories in descending order

#  the table
print(max_calories_table)



# the index of the row with the highest calorie content
index_max_calories <- which.max(fast_food_nutrition$calories)

#  the restaurant and food item at that index
restaurant_with_max_calories <- fast_food_nutrition$restaurant[index_max_calories]
food_with_max_calories <- fast_food_nutrition$item[index_max_calories]
max_calories_content <- fast_food_nutrition$calories[index_max_calories]

#  the result
print(paste("The restaurant that offers the menu item with the highest calorie count is", restaurant_with_max_calories, "."))
print(paste("The food item is", food_with_max_calories, "with", max_calories_content, "calories."))


