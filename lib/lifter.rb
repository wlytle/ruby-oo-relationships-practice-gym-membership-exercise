class Lifter
  @@all = []

  def self.all
    @@all
  end

  #get average lift total of all lifters
  def self.average_lift_total
    lift_totals = self.all.map(&:lift_total)
    lift_totals.sum.to_f / lift_totals.size.to_f
  end

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    save
  end

  #get all memberships belonging to an isntance of lifter
  def all_memberships
    Membership.all.select { |mem| mem.lifter == self }
  end

  #get all gyms to which lifter instance has a membership
  def all_gyms
    self.all_memberships.map(&:gym)
  end

  #Total cost of gym membership
  def total_cost
    self.all_memberships.map(&:cost).sum
  end

  #Sign up a lifter for a new gym
  def new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end

  private

  def save
    self.class.all << self
  end
end
