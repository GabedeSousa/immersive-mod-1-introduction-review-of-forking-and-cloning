class Customer
    attr_accessor :given_name, :family_name

    @@all = []

    def initialize(given_name, family_name)

        @given_name = given_name
        @family_name = family_name
        @customers = []
        @@all << self
    end

    def self.all
        @@all 
    end

    def given_name
     given_name.select.all do |given_name|
     given_name == self
    end

    def family_name
     family_name.select.all do |family_name|
     family_name == self
    end

    def full_name
        given_name.family_name.select.all do |full_name|
        full_name == self
    end

    def self.customer
        @customers.each.all do |customer|
        @customers << customer
    end

    def num_reviews
        customer.review.all do |customer|
        customer.review == self
    end
    
    def self.find_by_name(full_name)
            
    
    end

    def self.find_all_by_given_name(given_name)
        given_name.each do |given_name|
        given_name.customer == self
    end
    
end
