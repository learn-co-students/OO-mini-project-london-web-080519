class User
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
        RecipeCard.all.select{|recipe_card| recipe_card.user == self}
    end

    def recipes
        recipe_cards.map{|recipe_card| recipe_card.recipe}
    end

    def add_recipe_card(date:, rating:, recipe:)
        RecipeCard.new(date: date, rating: rating, user: self, recipe: recipe )
    end

    def allergies
        Allergy.all.select{|allergy| allergy.user == self}
    end
    
    def allergens
        allergies.map{|allergy| allergy.ingredient}
    end

    def self.allergens
        @@all.map{|user| user.allergens}.flatten.uniq
    end

    def declare_allergy(ingredient:)
        Allergy.new(user: self, ingredient: ingredient)
    end

    def top_three_recipes
        recipe_cards.max_by(3){|recipe_card| recipe_card.rating}.map{|recipe_card| recipe_card.recipe}
    end

    def most_recent_recipe
        recipe_cards.max_by{|recipe_card| recipe_card.date_to_analyze}.recipe
    end

    def safe_recipes
        Recipe.all.select{|recipe| recipe.ingredients - self.allergens == recipe.ingredients }
    end
end