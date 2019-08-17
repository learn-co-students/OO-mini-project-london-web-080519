class Recipe
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select{|rc| rc.recipe == self }
    end

    def users
        recipe_cards.map{|rc| rc.user }
    end

    def recipe_ingredients
        RecipeIngredient.all.select{|ri| ri.recipe == self }
    end

    def ingredients
        recipe_ingredients.map{|ri| ri.ingredient}
    end

    def allergies
        Allergy.all.select{|allergy| ingredients.include?(allergy.ingredient)}
    end

    def allergens
        allergies.map{|allergy| allergy.ingredient }
    end

    def add_ingredients(ingredient_array)
        ingredient_array.each{|ingredient| RecipeIngredient.new(ingredient, self)}
    end

    def self.most_popular
        all.max_by{|recipe| recipe.recipe_cards.count }
    end


end