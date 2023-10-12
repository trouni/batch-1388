require_relative "chef"

class Restaurant
  attr_reader :name, :location, :category, :capacity, :chef

  def self.categories
    ["sushi", "burgers", "diner style", "mexican"]
  end

  def initialize(name, location, category, capacity, chef_name = nil)
    @name = name # string
    @location = location # string
    @category = category # string
    @capacity = capacity # integer
    @chef = Chef.new(chef_name, self) # instance of Chef

    @reservations = []
  end

  def open?
    # opening hours are from 6 to 11pm
    Time.now.hour >= 18 && Time.now.hour <= 23
  end

  def make_reservation(customer_name)
    @reservations << customer_name
  end
end
