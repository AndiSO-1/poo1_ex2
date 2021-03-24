require_relative '../models'

Individual.new(firstname: "Marie", lastname: "Luis").save
jean = Individual.create(firstname: "Jean", lastname: "Luck")

Company.new(name: "Food House").save
Company.new(name: "Sports").save

multiF = Supplier.new(name: "Multi F")
fBanane = Supplier.new(name: "F Banane")

food = Category.create(name: "Nourriture", description: "Miam Miam")
cloth = Category.create(name: "Habits", description: "Style")

choco = Product.create(name: "Chocolat", price: 2.00, category: food, supplier: multiF)
banana = Product.create(name: "Banane", price: 0.10, category: food, supplier: fBanane)
shirt = Product.create(name: "Short", price: 20.00, category: cloth, supplier: multiF)

order = jean.orders.create

order.order_items.create(product: choco, quantity: 10, item_price: choco.price)
order.order_items.create(product: banana, quantity: 100, item_price: banana.price)
