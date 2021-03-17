require_relative '../models'

Client.new(firstname: "Marie", lastname: "Luis").save
jean = Client.create(firstname: "Jean", lastname: "Luck")

food = Category.create(name: "Nourriture", description: "Miam Miam")

choco = Product.create(name: "Chocolat", price: 2.00, category: food)
banana = Product.create(name: "Banane", price: 0.10, category: food)

order = jean.orders.create

order.order_items.create(product: choco, quantity: 10, item_price: choco.price)
order.order_items.create(product: banana, quantity: 100, item_price: banana.price)