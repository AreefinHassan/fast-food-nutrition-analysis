# Fast-Food Nutrition Analysis

Exploratory analysis of nutritional information for fast-food menu items, written in R. The project answers basic questions about the data — how many items and restaurants it covers, calorie and sodium extremes, sugar and sodium distributions — and summarizes calories by food type and by restaurant.

## Dataset

`data/fast_foods_nutritional_information.xlsx` — nutritional information for fast-food menu items, with one row per item and columns for restaurant, item, type, serving size, calories, sodium, and sugars.

- **126** menu items
- **12** restaurants
- **6** food types

## Key findings

| Question | Answer |
|---|---|
| Average calories (rounded) | 532 |
| Smallest serving size | 44 |
| Highest-sodium item | 2/3 LB Double Thickburger — 2,460 mg |
| Highest-sugar item | Chocolate Frosty Shake (Small) — 93 g |
| Highest-calorie item | SuperSonic Bacon Double CheeseBurger w/ Mayo (Sonic) — 1,240 calories |
| Total calories if you ate every item | 67,094 |
| Sugar — mean / standard deviation | 13.29 g / 21.02 g |
| Sodium — mean / standard deviation | 973.75 mg / 523.41 mg |
| Milkshakes in the data | 12 |

The script also builds two summary tables:

- **Calories by food type** — average, standard deviation, minimum, and maximum calories for each of the 6 food types, with the restaurant behind each minimum and maximum.
- **Highest-calorie item per restaurant** — the top item and its calorie count for each of the 12 restaurants, ranked from highest to lowest.

## How to run it

```r
# From the repository root, in R:
source("code/fast_food_nutrition.R")
```

Requires the `readxl` and `dplyr` packages:

```r
install.packages(c("readxl", "dplyr"))
```

## Contents

```
├── README.md
├── code/
│   └── fast_food_nutrition.R          # Full analysis: descriptives, filtering, group summaries
├── data/
│   └── fast_foods_nutritional_information.xlsx
└── report/
    └── Fast_Food_Nutrition_Report.pdf # Written-up answers to all 14 questions
```

## Author

Areefin Ul Hassan Chowdhury — Introduction to Data Science, Fall 2023.
