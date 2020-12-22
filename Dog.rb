class Dog
  attr_reader :name, :age

  def initialize name, age
    @name = name
    @age = age
  end

  def add_owner owner
    DogOwner.new self, owner
  end

  def owners
    DogOwner.all.filter { |dog_owner| dog_owner.dog == self }.map(&:owner).uniq
  end
end
