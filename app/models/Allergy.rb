class Allergy
    @@all = []

    def self.all
        @@all
    end

    def initialize(user:, ingredient:)
        @user = user
        @ingredient = ingredient
        @@all << self
    end

    attr_reader :user, :ingredient

    def self.allergic_ingredients
        @@all.map{|allergy| allergy.ingredient}.uniq
    end
end