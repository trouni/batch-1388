require_relative "restaurant"

class FastFoodRestaurant < Restaurant
  def open?
    true
  end

  def make_reservation(customer_name)
    puts "Uhhhh.. Sorry buddy, we don't take reservations here."
  end
end
