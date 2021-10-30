class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal({this.mealTime, this.name, this.imagePath, this.kiloCaloriesBurnt, this.timeTaken, this.preparation, this.ingredients});
}

final meals = [
  Meal(
      mealTime: "BREAKFAST",
      name: "Sprouts Salad",
      kiloCaloriesBurnt: "72",
      timeTaken: "10",
      imagePath: "assets/sprouts_salad.jpg",
      ingredients: [
        "2 cups of moong sprouts",
        "1 onion, 1 tomato",
        "1 green chili and 1 boiled potato",
        "chili powder and chaat masala",
      ],
      preparation:
      '''Take 2 cups of steamed or boiled moong sprouts in a big bowl or vessel.
Take 2 cups of steamed or boiled moong sprouts in a big bowl or vessel.
Next add 1 finely chopped green chili and 1 boiled potato (optional).
Then add ¼ teaspoon red chili powder (or cayenne pepper) and ½ or 1 teaspoon chaat masala (optional).
Stir very well. Lastly, season with salt and pour 1 teaspoon lemon juice or as required. Mix well.
Garnish with coriander leaves.
Serve moong sprout salad immediately with few lemon wedges.'''),
  Meal(
      mealTime: "DINNER",
      name: "Chicken Masala",
      kiloCaloriesBurnt: "280",
      timeTaken: "25",
      imagePath: "assets/chicken_masala.jpg",
      ingredients: [
        '1 chicken, cut into pieces',
        '1 lemon juice',
        '3 small onions sliced',
        '3-4 green chillies slit',
        '4 cloves of garlic, crushed',
        '1 Tbsp ginger, grated',
        '1 tsp vinegar',
        'For the Spices: (mix all into yogurt)',
        '1 tsp red chili powder',
        '2 tsp cumin seeds',
        '1 tsp coriander powder',
        '1/2 tsp all spices powder (garam masala)',
        '1/2 tsp paprika',
        '250 ml yogurt',
      ],
      preparation:
      '''Mix the chicken with lemon juice and onions. Let it rest for atleast 1 hour.
Once done, mix together all the remaining ingredients into yogurt and pour over the chicken.
Now take a non stick pan and start cooking chicken until it leaves just a nice thick coating of masala on the pieces.
Taste for salt and serve with coriander leaves.'''),
  Meal(
      mealTime: "SNACK",
      name: "Grilled Paneer",
      kiloCaloriesBurnt: "600",
      timeTaken: "20",
      imagePath: "assets/sesame_grilled_paneer.jpg",
      ingredients: [
        ''' 600 g Paneer (Cut into triangles)
¼ cup Vegetable Oil
2 tbsp Lemon Juice
½ tsp Dry Oregano
½ tsp Dry Basil
Salt to taste
½ tsp Red Chili Flakes
4 tbsp Sesame Seeds''',
      ],
      preparation:
      '''Mix vegetable oil, lemon juice, dried oregano, dried basil, salt and red chilli flakes in a bowl.
Add paneer triangles and coat them well with the mixture.
Keep aside for 10 minutes.
Take sesame seeds in a plate and coat the paneer triangles lightly with the seeds.
Heat a grill pan.
When the pan is hot, arrange the paneer triangles on the pan and grill until browned from both the sides.
Serve hot with any spicy dip.'''),
];