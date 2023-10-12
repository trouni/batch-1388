require_relative "lion"
require_relative "meerkat"
require_relative "warthog"

animals = [
  Lion.new("Simba"),
  Lion.new("Nala"),
  Meerkat.new("Timon"),
  Warthog.new("Pumbaa"),
  Lion.new("Zebbie"),
  Meerkat.new("Sayuki")
]

# Polymorphism
animals.each { |animal| puts animal.talk }
