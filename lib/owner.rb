class Owner
  @@all = []

attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reset_all
    @@all.clear
  end
end
