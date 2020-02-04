class Restaurant

    attr_accessor :name
    attr_reader :restaurant

    @@all = []

    def initialize(name)

        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def restaurant_name
     Restaurant.select.all do |restaurant|
     restaurant.name == self
    end

    def review
     restaurant.review.each do |review|
     restaurant.review == self
    end

    def customers
     list_of_all_customers.restaurant.review.include do |customers|
     review.uniq
    end

    def add_review(restaurant, rating)
        @restaurant << review
    end

    def average_star_rating

    end

end



