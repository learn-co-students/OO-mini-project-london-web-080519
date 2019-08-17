require_relative '../config/environment.rb'


bolognese = Recipe.new("Bolognese")

mince = Ingredient.new("Mince")
onions = Ingredient.new("Onions")
carrots = Ingredient.new("Carrots")
chopped_tomatoes = Ingredient.new("Chopped Tomatoes")
stock = Ingredient.new("Stock")

ri1 = RecipeIngredient.new(mince, bolognese)
ri2 = RecipeIngredient.new(onions, bolognese)
ri3 = RecipeIngredient.new(carrots, bolognese)
ri4 = RecipeIngredient.new(chopped_tomatoes, bolognese)
ri5 = RecipeIngredient.new(stock, bolognese)



pad_thai = Recipe.new("Pad-Thai")

noodles = Ingredient.new("Noodles")
chicken = Ingredient.new("Chicken")
egg = Ingredient.new("Egg")
prawns = Ingredient.new("Prawns")
pad_thai_sauce = Ingredient.new("Pad-Thai sauce")
spring_onions = Ingredient.new("Spring Onions")
peanuts = Ingredient.new("Peanuts")

ri6 = RecipeIngredient.new(noodles, pad_thai)
ri7 = RecipeIngredient.new(chicken, pad_thai)
ri8 = RecipeIngredient.new(egg, pad_thai)
ri9 = RecipeIngredient.new(prawns, pad_thai)
ri10 = RecipeIngredient.new(pad_thai_sauce, pad_thai)
ri11 = RecipeIngredient.new(spring_onions, pad_thai)
ri12 = RecipeIngredient.new(peanuts, pad_thai)

mac_and_cheese = Recipe.new("Mac-&-Cheese")
macaroni = Ingredient.new("Macaroni")
cheese = Ingredient.new("Cheese")
milk = Ingredient.new("Milk")
flour = Ingredient.new("Flour")
mac_and_cheese.add_ingredients([macaroni, cheese, milk, flour])

oli = User.new("Oli")
sab = User.new("Sab")

pad_thai_rc1 = RecipeCard.new(oli, pad_thai, 4.5, Time.now)
pad_thai_rc2 = RecipeCard.new(sab, pad_thai, 4.3, Time.now)
bolognese_rc1 = RecipeCard.new(oli, bolognese, 4.2, Time.now)
# mac_and_cheese_rc1 = RecipeCard.new(oli, mac_and_cheese, 3.2, Time.now)
oli.add_recipe_card(mac_and_cheese, 3.2, Time.now)
# mac_and_cheese_rc2 = RecipeCard.new(sab, mac_and_cheese, 4.0, Time.now)
sab.add_recipe_card(mac_and_cheese, 4.0, Time.now)

allergy1 = Allergy.new(peanuts, oli)
allergy2 = Allergy.new(milk, sab)
oli.declare_allergy(flour)
sab.declare_allergy(flour)

ri13 = RecipeIngredient.new(cheese, bolognese)






binding.pry
