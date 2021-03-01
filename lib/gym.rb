require 'pry'

class Gym
  attr_reader :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
end

def memberships
  Membership.all.select {|object| self == object.gym}
end

def lifters
  array = []
  self.membership.each do |object|
array << object.member
end
array
end
end

def lifters_names
  self.lifters.map {|object| object.name}
end

def lifters_total
 array = self.lifters.map {|object| object.lift_total}
 array.sum
  end
end



end


