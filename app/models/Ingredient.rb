class Ingredient
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:)
        @name = name
        @@all << self
    end

    attr_reader :name

    def allergies
        Allergy.all.select{|allergy| allergy.ingredient == self}
    end

    def allergic_count
        allergies.map{|allergy| allergy.user}.count
    end

    def recipe_ingredients
        RecipeIngredient.all.select{|recipe_ingredient| recipe_ingredient.ingredient == self}
    end

    def recipes
        recipe_ingredients.map{|recipe_ingredient| recipe_ingredient.recipe}
    end

    def self.most_common_allergen
        @@all.max_by{|ingredient| ingredient.allergic_count}
    end
end
