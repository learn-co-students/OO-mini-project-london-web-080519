class RecipeCard
    attr_reader :user, :recipe, :rating, :date

    @@all = []

    def initialize(user, recipe, rating, date)
        @user = user
        @recipe = recipe
        @rating = rating.to_f
        @date = date

        @@all << self
    end

    def self.all
        @@all
    end

end