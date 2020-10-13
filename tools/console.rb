# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative "../config/environment.rb"

l1 = Lifter.new("Ezekeal", 500)
l2 = Lifter.new("Sandy", 1000)

g1 = Gym.new("lifties")
g2 = Gym.new("Squatties")

m1 = Membership.new(45, l1, g1)
m2 = Membership.new(90, l1, g2)
m3 = Membership.new(40, l2, g1)

##########  TESTS #######

puts " Lifter methods\n"
puts "-------------------"
puts "All Lifters, Lifter.all"
p Lifter.all
puts "\n All memberships of lifter, l1.all_memberships "
p l1.all_memberships
puts "\n All gyms of lifter instance, l1.all_memberships"
p l1.all_gyms
puts "\nget average lift total of all lifters, Lifter.lift_totals"
p Lifter.average_lift_total
puts "\n Total cost of gym membership l1.total_cost"
p l1.total_cost
puts "\n Sign up a lifter for a new gym, l2.new_gym(400, g2)"
p l2.new_gym(400, g2)

puts "\n Membership Methods \n"
puts "-------------------"
puts "All memberships"
p Membership.all

puts "\n Gym methods\n"
puts "-------------------"
puts "All Gyms"
p Gym.all
puts "\nget all lifters at this gym g2.all_lifters"
p g2.all_lifters
puts "\nget all memberships at this gym instance, g2.get_memberships"
p g2.get_memberships
puts "\nNames of all members with memberships to this gym, g2.lifter_names"
p g2.lifter_names
puts "\nGet combined lift total of all members of this gym instnace, g2.lift_total"
p g2.lift_total

binding.pry

puts "Gains!"
