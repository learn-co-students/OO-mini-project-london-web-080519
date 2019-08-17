class Ingredient
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_ingredients
        RecipeIngredient.all.select{|ri| ri.ingredient == self }
    end

    def recipes
        recipe_ingredients.map{|rc| rc.recipe }
    end

    def allergies
        Allergy.all.select{|allergy| allergy.ingredient == self }
    end

    def allergen?
        allergies.length > 0 ? true : false
    end

    def self.most_common_allergen
        all.max_by{|ingredient| ingredient.allergies.count }
    end

end
