require_relative 'connection'
require_relative 'models'

puts ActiveRecord::Base.connection.execute("SELECT 1")

# Test pour l'exercice 3
# puts "Affiche les produits de Jean < 0.20"
# Client.find_by(firstname: 'Jean').ordered_products.cheap.each {|p| puts p.to_s }
#
# puts "Affiche les ordres avec > 10"
# puts OrderItem.bulk(10).map(&:product)

# Test pour l'exercice 4
#puts OrderItem.create.errors[:product].any?

# Test pour l'exercice 5
puts Order.first.price