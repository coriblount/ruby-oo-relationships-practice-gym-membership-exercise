# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Lisa", 150)
l2 = Lifter.new("Tommy", 300)
l3 = Lifter.new("Jerry", 75)

g1 = Gym.new("24hour Fitness")
g2 = Gym.new("Planet Fitness")
g3 = Gym.new("Lifetime Fitness")

Membership.new(50, g1, l2)
Membership.new(20, g2, l3)
Membership.new(100, g3, l1)
Membership.new(100, g3, l2)


binding.pry

puts "Gains!"
