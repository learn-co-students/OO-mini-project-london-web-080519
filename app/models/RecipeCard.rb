class RecipeCard
    @@all = []

    def self.all
        @@all
    end

    def initialize(date:, rating:, user:, recipe:)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe
        @@all << self
    end

    attr_reader :date, :rating, :user, :recipe

    def date_to_analyze
        date_array = self.date.split("/").reverse.join
    end
end