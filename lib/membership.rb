class Membership
  @@all = []

  def self.all
    @@all
  end

  attr_reader :cost, :lifter, :gym

  def initialize(cost, lifter, gym)
    @cost, @lifter, @gym = cost, lifter, gym
    save
  end

  private

  def save
    self.class.all << self
  end
end
