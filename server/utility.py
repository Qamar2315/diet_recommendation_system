from pyswip import Prolog
prolog = Prolog()
prolog.consult('diet_recommendation_prolog_file.pl') 


def generateDietPlan(user_data):
    query = f"calculate_calorie_requirements({user_data['age']}, {user_data['gender']}, {user_data['weight']}, {user_data['height']}, {user_data['activity_level']}, CalorieRequirements)."
    results = list(prolog.query(query))
    calorie_requirements=results[0]['CalorieRequirements']/3

    query = f"suggest_meal_plan(breakfast, {calorie_requirements}, {user_data['user_preferences']}, {user_data['health_conditions']} ,Breakfast)."
    break_fast = list(prolog.query(query))[0]

    query = f"suggest_meal_plan(lunch, {calorie_requirements}, {user_data['user_preferences']}, {user_data['health_conditions']} ,Lunch)."
    lunch = list(prolog.query(query))[0]

    query = f"suggest_meal_plan(dinner, {calorie_requirements}, {user_data['user_preferences']}, {user_data['health_conditions']} ,Dinner)."
    dinner = list(prolog.query(query))[0]
    diet_data = [
        break_fast,
        lunch,
        dinner,
        {"calorie_requirements":calorie_requirements}
    ]
    return diet_data




