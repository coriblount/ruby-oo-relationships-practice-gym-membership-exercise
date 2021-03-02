class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize (name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def memberships
    Membership.all.select { |membership| self == membership.member }
  end

  def gym
    gyms = []
    Membership.all.each do |membership|
      if self == membership.member
        gyms << membership.gym
      end
    end
    gyms
  end

  def self.average_lift_total
    lifters = []
    self.all.each do |lifter|
      lifters << lifter.lift_total
    end
    lifters.sum / lifters.length
  end

  def total_cost
    array = []
    Membership.all.each do |object|
      if object.member == self
        array << object.cost
      end
    end
    array.sum
  end

  def sign_up(cost, gym)
    Membership.new(self, gym, cost)
  end


  def self.all
    @@all
  end



end