class RecipeIngredient
    @@all = []

    def self.all
        @@all
    end

    def initialize(recipe:, ingredient:)
        @recipe = recipe
        @ingredient = ingredient
        @@all << self
    end

    attr_reader :recipe, :ingredient
end