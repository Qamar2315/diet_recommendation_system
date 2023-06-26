% Knowledge Base: Facts about food items and their nutritional values
food_item(apple, 52, 0.3, 14, 0.2).
food_item(banana, 96, 1.2, 23, 0.2).
food_item(chicken_breast, 165, 31, 0, 3.6).
food_item(avacado, 100, 0.9, 10.5, 6.2).
food_item(cucumber, 16, 0.6, 2.6, 0.2).
food_item(biryani, 450, 15, 60, 15).
food_item(naan, 200, 5, 30, 5).
food_item(qorma, 350, 10, 50, 10).
food_item(samosas, 150, 5, 20, 5).
food_item(dhal, 250, 10, 40, 5).
food_item(raita, 100, 5, 15, 0).
food_item(aaloo_gobhi, 300, 10, 50, 10).
food_item(kheer, 350, 10, 50, 15).
food_item(falooda, 250, 5, 40, 10).
food_item(chapli_kabab, 250, 10, 40, 10).
food_item(chicken_tikka, 300, 15, 50, 10).
food_item(fish_tikka, 250, 10, 40, 5).
food_item(karahi_gosht, 350, 15, 50, 15).
food_item(nihari, 400, 15, 60, 15).
food_item(sheer_khurma, 300, 10, 50, 10).
food_item(zarda, 250, 5, 40, 10).
food_item(gulab_jamun, 150, 5, 20, 5).
food_item(brown_rice, 200, 4, 45, 5).
food_item(paratha, 350, 4, 45, 5).
food_item(puri, 250, 4, 20, 5).
food_item(haleem, 450, 12, 45, 10).
food_item(paye, 350, 10, 20, 5).
food_item(naan_channay, 300, 8, 30, 5).
food_item(dahi_puri, 200, 2, 20, 5).
food_item(aloo_tikki, 250, 4, 20, 5).
food_item(sabzi_omelette, 200, 8, 20, 5).
food_item(matar_paneer, 300, 10, 50, 10).
food_item(aloo_methi, 250, 8, 40, 10).
food_item(bhindi, 200, 5, 30, 5).
food_item(channa, 250, 10, 40, 10).
food_item(dal_makhani, 300, 15, 50, 15).
food_item(khichdi, 200, 5, 30, 5).
food_item(pineapple, 50, 0.5, 13, 0.2).
food_item(grapes, 69, 0.72, 18, 0.16).
food_item(spinach, 23, 2.9, 3.6, 0.4).
food_item(carrot, 41, 0.9, 10, 0.2).
food_item(watermelon, 30, 0.6, 8, 0.2).
food_item(strawberries, 32, 0.7, 7.7, 0.4).
food_item(mango, 60, 0.82, 15, 0.38).
food_item(tomato, 18, 0.9, 3.9, 0.2).
food_item(potato, 77, 2, 17, 0.1).
food_item(onion, 40, 1.1, 9.3, 0.1).
food_item(lamb, 250, 25, 0, 20).
food_item(beef, 250, 26, 0, 17).
food_item(salmon, 206, 22, 0, 13).
food_item(shrimp, 85, 18, 0, 1.7).
food_item(lobster, 90, 18, 0, 1.5).
food_item(crab, 83, 18, 0, 1.4).
food_item(oysters, 68, 9, 4, 2).
food_item(eggs, 143, 13, 1.1, 9.5).
food_item(yogurt, 59, 3.4, 3.6, 3.3).
food_item(milk, 60, 3.2, 4.8, 3.4).
food_item(cheese, 402, 25, 1.3, 33).
food_item(bread, 265, 9, 49, 4).
food_item(pasta, 131, 5.5, 25, 1.2).
food_item(rice, 130, 2.7, 28, 0.3).
food_item(oatmeal, 68, 2.4, 12, 1.4).
food_item(corn, 96, 3.4, 21, 1.5).
food_item(peanuts, 567, 26, 16, 49).
food_item(almonds, 576, 21, 22, 49).
food_item(walnuts, 654, 15, 14, 65).
food_item(sunflower_seeds, 584, 20, 11, 51).
food_item(pumpkin_seeds, 559, 24, 15, 49).
food_item(chia_seeds, 486, 17, 43, 31).
food_item(flaxseeds, 534, 18, 29, 42).
food_item(sesame_seeds, 573, 17, 23, 49).
food_item(olive_oil, 884, 0, 0, 100).
food_item(coconut_oil, 862, 0, 0, 100).
food_item(avocado_oil, 884, 0, 0, 100).
food_item(canola_oil, 884, 0, 0, 100).
food_item(soybean_oil, 884, 0, 0, 100).
food_item(peanut_butter, 588, 25, 20, 50).
food_item(honey, 304, 0.3, 82, 0).
food_item(maple_syrup, 260, 0, 67, 0).
food_item(chocolate, 546, 5.5, 58, 33).
food_item(ice_cream, 207, 3.9, 22, 11).
food_item(pizza, 285, 12, 34, 10).
food_item(hamburger, 250, 13, 28, 9).
food_item(french_fries, 365, 3.4, 63, 14).
food_item(sushi, 129, 2.2, 27, 0.4).
food_item(tacos, 226, 9, 26, 9).
food_item(pancakes, 227, 6, 39, 4).



% Rule to check if a food item belongs to a specific meal category

belongs_to_category(apple, breakfast).
belongs_to_category(banana, breakfast).
belongs_to_category(naan_channay, breakfast).
belongs_to_category(dahi_puri, breakfast).
belongs_to_category(aloo_tiki, breakfast).
belongs_to_category(sabzi_omelette, breakfast).
belongs_to_category(paratha, breakfast).
belongs_to_category(haleem, breakfast).
belongs_to_category(puri , breakfast).
belongs_to_category(matar_paneer , breakfast).


belongs_to_category(chicken_breast, lunch).
belongs_to_category(avacado, lunch).
belongs_to_category(dhal, lunch).
belongs_to_category(brown_rice, lunch).
belongs_to_category(aloo_methi, lunch).
belongs_to_category(bhindi, lunch).
belongs_to_category(channa, lunch).

belongs_to_category(cucumber, snack).
belongs_to_category(samosas, snack).
belongs_to_category(raita, snack).
belongs_to_category(falooda, snack).
belongs_to_category(kheer, snack).
belongs_to_category(sheer_khurma, snack).
belongs_to_category(zarda, snack).
belongs_to_category(gulab_jamun, snack).

belongs_to_category(biryani, dinner).
belongs_to_category(naan, dinner).
belongs_to_category(qorma, dinner).
belongs_to_category(aaloo_gobhi, dinner).
belongs_to_category(chapli_kabab, dinner).
belongs_to_category(chicken_tikka, dinner).
belongs_to_category(fish_tikka, dinner).
belongs_to_category(karahi_gosht, dinner).
belongs_to_category(nihari, dinner).
belongs_to_category(paye, dinner).
belongs_to_category(dal_makhani, dinner).
belongs_to_category(khichdi, dinner).


belongs_to_category(pineapple, breakfast).
belongs_to_category(grapes, breakfast).
belongs_to_category(spinach, lunch).
belongs_to_category(carrot, lunch).
belongs_to_category(watermelon, breakfast).
belongs_to_category(strawberries, breakfast).
belongs_to_category(mango, breakfast).
belongs_to_category(tomato, lunch).
belongs_to_category(potato, lunch).
belongs_to_category(onion, lunch).
belongs_to_category(lamb, dinner).
belongs_to_category(beef, dinner).
belongs_to_category(salmon, dinner).
belongs_to_category(shrimp, dinner).
belongs_to_category(lobster, dinner).
belongs_to_category(crab, dinner).
belongs_to_category(oysters, dinner).
belongs_to_category(eggs, breakfast).
belongs_to_category(yogurt, breakfast).
belongs_to_category(milk, breakfast).
belongs_to_category(cheese, breakfast).
belongs_to_category(bread, breakfast).
belongs_to_category(pasta, lunch).
belongs_to_category(rice, lunch).
belongs_to_category(oatmeal, breakfast).
belongs_to_category(corn, lunch).
belongs_to_category(peanuts, snack).
belongs_to_category(almonds, snack).
belongs_to_category(walnuts, snack).
belongs_to_category(sunflower_seeds, breakfast).
belongs_to_category(pumpkin_seeds, breakfast).
belongs_to_category(chia_seeds, breakfast).
belongs_to_category(flaxseeds, breakfast).
belongs_to_category(sesame_seeds, breakfast).
belongs_to_category(olive_oil, breakfast).
belongs_to_category(coconut_oil, breakfast).
belongs_to_category(avocado_oil, breakfast).
belongs_to_category(canola_oil, breakfast).
belongs_to_category(soybean_oil, breakfast).
belongs_to_category(peanut_butter, breakfast).
belongs_to_category(honey, breakfast).
belongs_to_category(maple_syrup, breakfast).
belongs_to_category(chocolate, dinner).
belongs_to_category(ice_cream, dinner).
belongs_to_category(pizza, dinner).
belongs_to_category(hamburger, dinner).
belongs_to_category(french_fries, breakfast).
belongs_to_category(sushi, dinner).
belongs_to_category(tacos, dinner).
belongs_to_category(pancakes, breakfast).




belongs_to_class(apple, non-vegetarian).
belongs_to_class(banana, non-vegetarian).
belongs_to_class(naan_channay, non-vegetarian).
belongs_to_class(dahi_puri, non-vegetarian).
belongs_to_class(aloo_tiki, non-vegetarian).
belongs_to_class(sabzi_omelette, non-vegetarian).
belongs_to_class(paratha, non-vegetarian).
belongs_to_class(haleem, non-vegetarian).
belongs_to_class(puri , non-vegetarian).


belongs_to_class(chicken_breast, non-vegetarian).
belongs_to_class(avacado, non-vegetarian).
belongs_to_class(dhal, non-vegetarian).
belongs_to_class(brown_rice, non-vegetarian).

belongs_to_class(cucumber, non-vegetarian).
belongs_to_class(samosas, non-vegetarian).
belongs_to_class(raita, non-vegetarian).
belongs_to_class(falooda, non-vegetarian).
belongs_to_class(kheer, non-vegetarian).
belongs_to_class(sheer_khurma, non-vegetarian).
belongs_to_class(zarda, non-vegetarian).
belongs_to_class(gulab_jamun, non-vegetarian).

belongs_to_class(biryani, non-vegetarian).
belongs_to_class(naan, non-vegetarian).
belongs_to_class(qorma, non-vegetarian).
belongs_to_class(aaloo_gobhi, non-vegetarian).
belongs_to_class(chapli_kabab, non-vegetarian).
belongs_to_class(chicken_tikka, non-vegetarian).
belongs_to_class(fish_tikka, non-vegetarian).
belongs_to_class(karahi_gosht, non-vegetarian).
belongs_to_class(nihari, non-vegetarian).
belongs_to_class(paye, non-vegetarian).

belongs_to_class(matar_paneer, non-vegetarian).
belongs_to_class(aloo_methi, non-vegetarian).
belongs_to_class(bhindi, non-vegetarian).
belongs_to_class(channa, non-vegetarian).
belongs_to_class(dal_makhani, non-vegetarian).
belongs_to_class(khichdi, non-vegetarian).


belongs_to_class(apple, vegetarian).
belongs_to_class(banana, vegetarian).
belongs_to_class(naan_channay, vegetarian).
belongs_to_class(dahi_puri, vegetarian).
belongs_to_class(aloo_tiki, vegetarian).
belongs_to_class(sabzi_omelette, vegetarian).
belongs_to_class(paratha, vegetarian).
belongs_to_class(puri , vegetarian).


belongs_to_class(avacado, vegetarian).
belongs_to_class(dhal, vegetarian).
belongs_to_class(brown_rice, vegetarian).

belongs_to_class(cucumber, vegetarian).
belongs_to_class(raita, vegetarian).
belongs_to_class(falooda, vegetarian).
belongs_to_class(kheer, vegetarian).
belongs_to_class(sheer_khurma, vegetarian).
belongs_to_class(zarda, vegetarian).
belongs_to_class(gulab_jamun, vegetarian).
belongs_to_class(matar_paneer, vegetarian).
belongs_to_class(aloo_methi, vegetarian).
belongs_to_class(bhindi, vegetarian).
belongs_to_class(channa, vegetarian).
belongs_to_class(dal_makhani, vegetarian).
belongs_to_class(khichdi, vegetarian).
belongs_to_class(naan, vegetarian).
belongs_to_class(aaloo_gobhi, vegetarian).

belongs_to_class(pineapple, vegetarian).
belongs_to_class(grapes, vegetarian).
belongs_to_class(spinach, vegetarian).
belongs_to_class(carrot, vegetarian).
belongs_to_class(watermelon, vegetarian).
belongs_to_class(strawberries, vegetarian).
belongs_to_class(mango, vegetarian).
belongs_to_class(tomato, vegetarian).
belongs_to_class(potato, vegetarian).
belongs_to_class(onion, vegetarian).
belongs_to_class(lamb, non-vegetarian).
belongs_to_class(beef, non-vegetarian).
belongs_to_class(salmon, non-vegetarian).
belongs_to_class(shrimp, non-vegetarian).
belongs_to_class(lobster, non-vegetarian).
belongs_to_class(crab, non-vegetarian).
belongs_to_class(oysters, non-vegetarian).
belongs_to_class(eggs, non-vegetarian).
belongs_to_class(yogurt, vegetarian).
belongs_to_class(milk, vegetarian).
belongs_to_class(cheese, vegetarian).
belongs_to_class(bread, vegetarian).
belongs_to_class(pasta, vegetarian).
belongs_to_class(rice, vegetarian).
belongs_to_class(oatmeal, vegetarian).
belongs_to_class(corn, vegetarian).
belongs_to_class(peanuts, vegetarian).
belongs_to_class(almonds, vegetarian).
belongs_to_class(walnuts, vegetarian).
belongs_to_class(sunflower_seeds, vegetarian).
belongs_to_class(pumpkin_seeds, vegetarian).
belongs_to_class(chia_seeds, vegetarian).
belongs_to_class(flaxseeds, vegetarian).
belongs_to_class(sesame_seeds, vegetarian).
belongs_to_class(olive_oil, vegetarian).
belongs_to_class(coconut_oil, vegetarian).
belongs_to_class(avocado_oil, vegetarian).
belongs_to_class(canola_oil, vegetarian).
belongs_to_class(soybean_oil, vegetarian).
belongs_to_class(peanut_butter, vegetarian).
belongs_to_class(honey, vegetarian).
belongs_to_class(maple_syrup, vegetarian).
belongs_to_class(chocolate, vegetarian).
belongs_to_class(ice_cream, vegetarian).
belongs_to_class(pizza, vegetarian).
belongs_to_class(hamburger, vegetarian).
belongs_to_class(french_fries, vegetarian).
belongs_to_class(sushi, vegetarian).
belongs_to_class(tacos, vegetarian).
belongs_to_class(pancakes, vegetarian).

belongs_to_health_class(naan_channay, low-sugar).




suggest_meal_plan(Category, MaxCalories, UserPreference, HealthConditions ,MealPlan) :-
    findall(FoodItem, (food_item(FoodItem, _, _, _, _), satisfies_preference(FoodItem, UserPreference), satisfies_health(FoodItem, HealthConditions)) , FoodItems),
    random_permutation(FoodItems, ShuffledFoodItems),
    suggest_meal_plan_helper(Category, MaxCalories, ShuffledFoodItems, MealPlan).

% Helper rule to check if a food item satisfies the user's preference
satisfies_preference(FoodItem, UserPreference) :-
    belongs_to_class(FoodItem, UserPreference).

satisfies_health(FoodItem, HealthConditions) :-
  HealthConditions = heart-patient,
  food_item(FoodItem, Calorie, Protein, Carbohydrate, Fat),
  Calorie < 300,
  Protein <30,
  Carbohydrate <60,
  Fat<15.



satisfies_health(FoodItem, HealthConditions) :-
  HealthConditions = diabetic-patient,
  food_item(FoodItem, Calorie, Protein, Carbohydrate, Fat),
  Calorie < 400,
  Protein <30,
  Carbohydrate <60,
  Fat<15.
 

satisfies_health(FoodItem, HealthConditions) :-
  HealthConditions = low-weight,
  food_item(FoodItem, Calorie, Protein, Carbohydrate, Fat),
  Calorie > 100,
  Protein > 5,
  Carbohydrate > 5,
  Fat > 1.

satisfies_health(FoodItem, HealthConditions) :-
  HealthConditions = heigh-weight,
  HealthConditions = low-weight,
  food_item(FoodItem, Calorie, Protein, Carbohydrate, Fat),
  Calorie < 300,
  Protein > 10,
  Carbohydrate <60,
  Fat < 15.

satisfies_health(FoodItem, HealthConditions) :-
  HealthConditions = fit,
  belongs_to_health_class(naan_channay, low-sugar).

% Rest of the code remains the same as before
suggest_meal_plan_helper(_, _, [], []).

suggest_meal_plan_helper(Category, MaxCalories, [FoodItem|Rest], [FoodItem|MealPlan]) :-
    food_item(FoodItem, Calories, _, _, _),
    belongs_to_category(FoodItem, Category),
    Calories =< MaxCalories,
    RemainingCalories is MaxCalories - Calories,
    suggest_meal_plan_helper(Category, RemainingCalories, Rest, MealPlan).

suggest_meal_plan_helper(Category, MaxCalories, [_|Rest], MealPlan) :-
    suggest_meal_plan_helper(Category, MaxCalories, Rest, MealPlan).

calculate_calorie_requirements(Age, Gender, Weight, Height, ActivityLevel, CalorieRequirements):-
    calculate_bmr(Age, Gender, Weight, Height, BMR),
    activity_multiplier(ActivityLevel,PAL),
    CalorieRequirements is BMR * PAL.


calculate_bmr(Age, Gender, Weight, Height, BMR) :-
    Gender = male,
    BMR is (10 * Weight) + (6.25 * Height) - (5 * Age) + 5.

calculate_bmr(Age, Gender, Weight, Height, BMR) :-
    Gender = female,
    BMR is (10 * Weight) + (6.25 * Height) - (5 * Age) - 161.

activity_multiplier(sedentary, 1.2).
activity_multiplier(lightly_active, 1.375).
activity_multiplier(moderately_active, 1.55).
activity_multiplier(very_active, 1.725).
activity_multiplier(extra_active, 1.9).


% Rule to generate a personalized diet plan recommendation
generate_diet_plan(Name, Age, Gender, Weight, Height, ActivityLevel,UserPreference, HealthConditions, DietPlan) :-
    % Generate meal plan recommendations based on dietary preferences
    calculate_calorie_requirements(Age, Gender, Weight, Height, ActivityLevel, CalorieRequirements),
    CalorieRequirementsNew is round(CalorieRequirements) // 3,
    suggest_meal_plan(breakfast, CalorieRequirementsNew, UserPreference, HealthConditions ,Breakfast),
    suggest_meal_plan(lunch,CalorieRequirementsNew, UserPreference, HealthConditions ,Lunch),
    suggest_meal_plan(dinner, CalorieRequirementsNew, UserPreference, HealthConditions ,Dinner),
    suggest_meal_plan(snacks, CalorieRequirementsNew, UserPreference, HealthConditions ,Snacks),
    % Assemble the diet plan
    DietPlan = diet_plan(Name, Breakfast, Lunch, Dinner, Snacks, CalorieRequirements).



% Rule to accept user input for personal information and dietary preferences
accept_user_input :-
  write('Enter your name: '),
  read(Name),
  write('Enter your age: '),
  read(Age),
  write('Enter your gender: '),
  read(Gender),
  write('Enter your weight (in kg): '),
  read(Weight),
  write('Enter your height (in cm): '),
  read(Height),
  write('Enter your activity level (sedentary, lightly_active, moderately_active, very_active, extra_active): '),
  read(ActivityLevel),
  write('Enter your food preference (vegetarian, non-vegetarian): '),
  read(UserPreference),
  write('Enter your health conditions ie high-calorie: '),
  read(HealthConditions),
  % split_string(HealthConditions, ",", "", HealthConditionsList),
  generate_diet_plan(Name, Age, Gender, Weight, Height, ActivityLevel, UserPreference,HealthConditions, DietPlan),
  write('Recommended Diet Plan: '), write(DietPlan).
