require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("San Diego Zoo", "San Diego")
z2 = Zoo.new("Seattle Zoo", "Seattle")
a1 = Animal.new("Walrus", "Carl", 400, z1)
a2 = Animal.new("Hedgehog", "Bruce", 30, z2)


binding.pry
puts "done"
