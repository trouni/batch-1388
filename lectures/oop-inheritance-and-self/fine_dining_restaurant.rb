require_relative "restaurant"

class FineDiningRestaurant < Restaurant
  attr_reader :stars

  def initialize(name, location, category, capacity, stars)
    # super <=> super(name, location, category, capacity, stars)
    super(name, location, category, capacity) # calls the method of the same name (here, initialize), in the parent class
    @stars = stars
  end
end
