class Recipe
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:)
        @name = name
        @@all << self
    end

    attr_reader :name

    def recipe_cards
        RecipeCard.all.select{|recipe_card| recipe_card.recipe == self}
    end
    
    def users
        recipe_cards.map{|recipe_card| recipe_card.user}
    end
    
    def self.most_popular
        @@all.max_by{|recipe| recipe.users.count}
    end

    def recipe_ingredients
        RecipeIngredient.all.select{|recipe_ingredient| recipe_ingredient.recipe == self}
    end

    def ingredients
        recipe_ingredients.map{|recipe_ingredient| recipe_ingredient.ingredient}
    end

    def allergens
        self.ingredients & User.allergens
    end

    def add_ingredients(ingredient_array:)
        ingredient_array.each do |ingredient|
            RecipeIngredient.new(recipe: self, ingredient: ingredient)
        end
    end
end