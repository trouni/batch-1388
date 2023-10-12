class Animal
  attr_reader :name

  def self.phyla
    %w[
      Porifera
      Coelenterata
      Platyhelminthes
      Nematoda
      Annelida
      Arthropoda
      Mollusca
      Echinodermata
      Protochordata
      Vertebrata
    ]
  end

  def initialize(name)
    @name = name
  end

  def eat(food)
    "#{name} eats #{food}"
  end
end
