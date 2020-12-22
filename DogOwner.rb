class DogOwner
  attr_reader :dog, :owner
  @@all = []

  def initialize dog, owner
    @dog = dog
    @owner = owner

    @@all << self
  end

  def self.all
    @@all
  end
end
