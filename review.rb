class Review


    attr_accessor :name, :given_name, :family_name
    attr_reader :customer, :review
    @@all = []

    def initialize(customer, restaurant, rating_a_number)

        @customer = customer
        @restaurant = restaurant
        @rating_a_number = rating_a_number
        @@all << self
    end

    def self.all
        @@all 
    end

    def rating
        rating.select.all do |rating|
        rating.restaurant == self
    end

    def self.review
        review.select.all do |review|
        review.restaurant == self
    end

    def customer
        @customer.review.map do |customer|
        @review << customer

    end

    def restaurant
        @restaurant.review.select.all do |restaurant|
        @restaurant << review
    end

    








end