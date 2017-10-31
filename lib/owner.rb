class Owner
  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end


  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def buy_fish(name)
    f = Fish.new(name)
    @pets[:fishes] << f
  end

  def buy_cat(name)
    f = Cat.new(name)
    @pets[:cats] << f
  end

  def buy_dog(name)
    f = Dog.new(name)
    @pets[:dogs] << f
  end

  
end
