class Owner
  def initialize name
    @name = name
  end

  def add_dog dog
    DogOwner.create dog, self
  end

  def dogs
    DogOwner.all.filter do |dog_owner|
      dog_owner.owner == self
    end.map(&:dog).uniq
  end

  def dog_average_age
    dogs.map(&:age).reduce(&:+) / dogs.length
  end
end
