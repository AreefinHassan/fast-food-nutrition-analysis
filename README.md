# Fast-Food Nutrition Analysis

[![R](https://img.shields.io/badge/language-R-276DC3?style=flat&logo=r&logoColor=white)](https://www.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Exploratory analysis of nutritional information for fast-food menu items, written in R. The analysis covers how many items and restaurants the data includes, calorie and sodium extremes, sugar and sodium distributions, and summarizes calories by food type and by restaurant.

## Key Results

- **126** menu items across **12** restaurants and **6** food types
- **Average calories:** 532 per item (rounded)
- **Highest-calorie item:** SuperSonic Bacon Double CheeseBurger w/ Mayo (Sonic) — **1,240 calories**
- **Highest-sodium item:** 2/3 LB Double Thickburger (Hardee's) — **2,460 mg**
- **Highest-sugar item:** Chocolate Frosty Shake (Small) — **93 g**
- **Total calories if you ate every item:** 67,094
- **Sugar:** mean 13.29 g, standard deviation 21.02 g
- **Sodium:** mean 973.75 mg, standard deviation 523.41 mg
- **Smallest serving size:** 44
- **Milkshakes in the data:** 12

## Calories by Food Type

| Food type | Mean calories | Std. dev. | Min (restaurant) | Max (restaurant) |
|---|---:|---:|---:|---:|
| Chicken Nuggets | 274.5 | 119.8 | 130 (Chick-fil-A) | 530 (White Castle) |
| French Fries | 314.1 | 46.7 | 230 (McDonald's) | 385 (In-N-Out Burger) |
| Milkshake | 606.7 | 98.8 | 430 (Whataburger) | 800 (Jack in the Box) |
| Breaded Chicken Sandwich | 522.0 | 117.0 | 380 (White Castle) | 750 (Hardee's) |
| Burger | 620.2 | 277.1 | 140 (White Castle) | 1,240 (Sonic) |
| Grilled Chicken Sandwich | 408.0 | 124.0 | 180 (White Castle) | 590 (Hardee's) |

Burgers average the most calories (620.2) and vary the most (std. dev. 277.1); chicken nuggets average the fewest (274.5).

## Highest-Calorie Item per Restaurant

| Rank | Restaurant | Calories | Item |
|---:|---|---:|---|
| 1 | Sonic | 1,240 | SuperSonic Bacon Double CheeseBurger w Mayo |
| 2 | Hardee's | 1,140 | 2/3 LB Double Thickburger |
| 3 | Whataburger | 1,110 | Chop House Cheddar Burger |
| 4 | Wendy's | 1,090 | 3/4 lb. Triple w/ Cheese |
| 5 | Burger King | 1,040 | Double Bacon King |
| 6 | Jack in the Box | 1,030 | Sirloin Cheeseburger |
| 7 | Carl's Jr. | 1,020 | The 1/2 lb. Original Six Dollar Thickburger |
| 8 | Dairy Queen | 770 | 1/2 lb. Cheese GrillBurger |
| 9 | McDonald's | 750 | Double Quarter Pounder with Cheese |
| 10 | In-N-Out Burger | 670 | Double-Double w/Onion |
| 11 | Chick-fil-A | 560 | Chocolate Milkshake |
| 12 | White Castle | 550 | Chocolate Milk Shake (21oz) |

## Dataset

`data/fast_foods_nutritional_information.xlsx` — nutritional information for fast-food menu items, with one row per item and columns for restaurant, item, type, serving size, calories, sodium, and sugars.

## Methods

The R script (`code/fast_food_nutrition.R`) reads the spreadsheet with `readxl`, then:

1. **Descriptive statistics** — row count, unique restaurants and food types, mean calories, smallest serving size, and the highest-sodium, highest-sugar, and highest-calorie items.
2. **Filtering** — counts items by type (e.g. milkshakes).
3. **Group summaries** — with `dplyr`, calories by food type (mean, standard deviation, min and max, with the restaurant behind each extreme) and the highest-calorie item per restaurant, ranked highest to lowest.

## How to Run

Requires the `readxl` and `dplyr` packages:

```r
install.packages(c("readxl", "dplyr"))
```

From the repository root, in R:

```r
source("code/fast_food_nutrition.R")
```

The script prints every result to the console. The dataset must be present at `data/fast_foods_nutritional_information.xlsx`.

## Contents

```
├── README.md
├── LICENSE
├── code/
│   └── fast_food_nutrition.R          # Full analysis: descriptives, filtering, group summaries
├── data/
│   └── fast_foods_nutritional_information.xlsx
└── report/
    └── Fast_Food_Nutrition_Report.pdf # Written-up answers to all 14 questions
```

## Author

Areefin-Ul-Hassan Chowdhury — Introduction to Data Science, Fall 2023.
