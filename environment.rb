require "pry"

require "./Dog"
require "./Owner"
require "./DogOwner"

bixby = Dog.new "Bixby", 30
mesa = Dog.new "Mesa", 25

kyle = Owner.new "Kyle"
elyse = Owner.new "Elyse"

DogOwner.new bixby, kyle
DogOwner.new bixby, elyse
DogOwner.new mesa, elyse

binding.pry
