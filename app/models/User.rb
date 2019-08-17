class User
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select{|rc| rc.user == self}
    end

    def recipes
        recipe_cards.map{|rc| rc.recipe }.uniq
    end

    def add_recipe_card(recipe, rating, date)
        RecipeCard.new(self, recipe, rating, date)
    end

    def declare_allergy(ingredient)
        Allergy.new(ingredient, self)
    end

    def allergies
        Allergy.all.select{|allergy| allergy.user == self}
    end

    def allergens
        allergies.map{|allergy| allergy.ingredient }
    end

    def top_three_recipes
        recipe_cards.sort_by{|rc| rc.rating }[-3, 3].map{|rc| rc.recipe }
    end

    def most_recent_recipe
        recipe_cards.max_by{|rc| rc.date }.recipe
    end

    def harmful_recipe?(recipe)
        result = false
        recipe.ingredients.each{|ingredient| result = self.allergens.include?(ingredient)}
        result
    end

    def safe_recipes
        recipes.reject{|recipe| self.harmful_recipe?(recipe) }
    end


end