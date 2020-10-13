class Gym
  @@all = []

  def self.all
    @@all
  end

  attr_reader :name

  def initialize(name)
    @name = name
    save
  end

  #get all memberships at this gym instance
  def get_memberships
    Membership.all.select { |mem| mem.gym == self }
  end

  #get all lifters at this gym
  def all_lifters
    self.get_memberships.map(&:lifter)
  end

  #Names of all members with memberships to this gym
  def lifter_names
    self.all_lifters.map(&:name)
  end

  #Get combined lift total of all members of this gym instnace
  def lift_total
    self.all_lifters.map(&:lift_total).sum
  end

  private

  def save
    self.class.all << self
  end
end
