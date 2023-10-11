class Car # UpperCamelCase
  attr_reader :brand # , :color - already in the attr_accessor
  # The attr_reader defines the method below:
  # def color
  #   @color
  # end
  # attr_writer :color
  # def color=(new_color)
  #   @color = new_color
  # end
  attr_accessor :color # creates both the attr_reader and the attr_writer

  # constructor
  def initialize(color, brand = "Tesla") # only runs when you call Car.new
    # DATA (attributes) - describes the STATE of our car

    # @instance_variable
    @engine_started = false
    @color = color # string
    @brand = brand # string

    # Encapsulation: all the instance variables are hidden to the outside
  end

  # BEHAVIOR
  # #instance_methods
  def start
    inject_fuel
    crank_engine
    spark_the_plugs

    @engine_started = true
  end

  # explicit reader
  def engine_started?
    @engine_started
  end

  def paint(new_color)
    @color = new_color
  end

  private

  def inject_fuel
    sleep(0.7)
    puts "Injecting fuel..."
  end

  def crank_engine
    sleep(1)
    puts "Cranking the engine..."
  end

  def spark_the_plugs
    sleep(0.5)
    puts "Sparking the plugs..."
  end
end

# array[index]
# hash[key]
# instance.method_name

scott = Car.new("blue", "Toyota")
puts "Scott's car is #{scott.engine_started? ? "ON" : "OFF"}."

puts "Turning on Scott's car's engine..."
scott.start

puts "Scott's car is #{scott.engine_started? ? "ON" : "OFF"}."

stephanie = Car.new("purple", "Porsche")
puts "Stephanie's car is #{stephanie.color.capitalize}."

puts "We are repainting Stephanie's car to black..."
# stephanie.paint('black')
stephanie.color = "black"

puts "Stephanie's car is #{stephanie.color}."
