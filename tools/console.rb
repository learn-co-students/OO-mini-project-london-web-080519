require_relative '../config/environment.rb'


user1 = User.new(name: "joaquin")
user2 = User.new(name: "paco")
user3 = User.new(name: "pepe")

recipe1 = Recipe.new(name: "roasted chicken")
recipe2 = Recipe.new(name: "baked potatoes")
recipe3 = Recipe.new(name: "grilled beef")
recipe4 = Recipe.new(name: "soup")
recipe5 = Recipe.new(name: "pasta")
recipe6 = Recipe.new(name: "mix")

ingredient1 = Ingredient.new(name: "chicken")
ingredient2 = Ingredient.new(name: "potatoe")
ingredient3 = Ingredient.new(name: "olive oil")
ingredient4 = Ingredient.new(name: "beef")
ingredient5 = Ingredient.new(name: "water")
ingredient6 = Ingredient.new(name: "fish")
ingredient7 = Ingredient.new(name: "chocolate")
ingredient8 = Ingredient.new(name: "flour")
ingredient9 = Ingredient.new(name: "eggs")
ingredient10 = Ingredient.new(name: "salt")

allergy1 = Allergy.new(user: user1, ingredient: ingredient1)
allergy2 = Allergy.new(user: user1, ingredient: ingredient2)
allergy3 = Allergy.new(user: user1, ingredient: ingredient3)
allergy4 = Allergy.new(user: user2, ingredient: ingredient1)
allergy5 = Allergy.new(user: user2, ingredient: ingredient6)
allergy6 = Allergy.new(user: user3, ingredient: ingredient1)
allergy7 = Allergy.new(user: user3, ingredient: ingredient8)

recipe_card1= RecipeCard.new(date: "12/12/2018", rating: 7, user: user1, recipe: recipe1)
recipe_card2= RecipeCard.new(date: "12/11/2018", rating: 6, user: user2, recipe: recipe1)
recipe_card3= RecipeCard.new(date: "12/10/2018", rating: 5, user: user1, recipe: recipe2)
recipe_card4= RecipeCard.new(date: "11/12/2018", rating: 9, user: user3, recipe: recipe1)
recipe_card5= RecipeCard.new(date: "11/10/2018", rating: 2, user: user1, recipe: recipe4)
recipe_card6= RecipeCard.new(date: "12/12/2017", rating: 3, user: user2, recipe: recipe5)
recipe_card7= RecipeCard.new(date: "10/09/2017", rating: 4, user: user1, recipe: recipe3)
recipe_card8= RecipeCard.new(date: "10/09/2007", rating: 1, user: user1, recipe: recipe6)

recipe_ingredient1 = RecipeIngredient.new(recipe: recipe1, ingredient: ingredient1)
recipe_ingredient2 = RecipeIngredient.new(recipe: recipe1, ingredient: ingredient3)
recipe_ingredient3 = RecipeIngredient.new(recipe: recipe2, ingredient: ingredient2)
recipe_ingredient4 = RecipeIngredient.new(recipe: recipe2, ingredient: ingredient3)
recipe_ingredient5 = RecipeIngredient.new(recipe: recipe2, ingredient: ingredient4)
recipe_ingredient6 = RecipeIngredient.new(recipe: recipe3, ingredient: ingredient3)
recipe_ingredient7 = RecipeIngredient.new(recipe: recipe3, ingredient: ingredient4)
recipe_ingredient8 = RecipeIngredient.new(recipe: recipe3, ingredient: ingredient10)
recipe_ingredient9 = RecipeIngredient.new(recipe: recipe3, ingredient: ingredient9)
recipe_ingredient10 = RecipeIngredient.new(recipe: recipe4, ingredient: ingredient5)
recipe_ingredient11 = RecipeIngredient.new(recipe: recipe5, ingredient: ingredient10)
recipe_ingredient12 = RecipeIngredient.new(recipe: recipe5, ingredient: ingredient9)
recipe_ingredient13 = RecipeIngredient.new(recipe: recipe5, ingredient: ingredient8)
recipe_ingredient14 = RecipeIngredient.new(recipe: recipe5, ingredient: ingredient5)
recipe_ingredient15 = RecipeIngredient.new(recipe: recipe5, ingredient: ingredient4)
recipe_ingredient16 = RecipeIngredient.new(recipe: recipe6, ingredient: ingredient7)
recipe_ingredient17 = RecipeIngredient.new(recipe: recipe6, ingredient: ingredient8)
recipe_ingredient18 = RecipeIngredient.new(recipe: recipe6, ingredient: ingredient9)


ingredient_array1 = [ingredient1, ingredient2, ingredient3]
ingredient_array2 = [ingredient4, ingredient5, ingredient6]


binding.pry
