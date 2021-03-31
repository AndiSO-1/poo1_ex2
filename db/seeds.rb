require_relative '../models'

marie = Individual.create(firstname: "Marie", lastname: "Luis")
jean = Individual.create(firstname: "Jean", lastname: "Luck")

Company.new(name: "Food House").save
Company.new(name: "Sports").save

comment1 = Comment.create(content:"Bon produit, mashalah", client: jean)
comment2 = Comment.create(content:"Je les adorent", client: jean)

multiF = Supplier.new(name: "Multi F", comments: [comment2])
fBanane = Supplier.new(name: "F Banane")

food = Category.create(name: "Nourriture", description: "Miam Miam")
cloth = Category.create(name: "Habits", description: "Style")
vehicle = Category.create(name: "Vehicules", description: "Vroom")

choco = Product.create(name: "Chocolat", price: 2.00, category: food, supplier: multiF, comments: [comment1])
banana = Product.create(name: "Banane", price: 0.10, category: food, supplier: fBanane)
shirt = Product.create(name: "Short", price: 20.00, category: cloth, supplier: multiF)

oi1 = OrderItem.new(product: choco, quantity: 10, item_price: choco.price)
oi2 = OrderItem.create(product: banana, quantity: 100, item_price: banana.price)
order = jean.orders.create(status:"I don't know", order_items: [oi1, oi2])

oi3 = OrderItem.new(product: shirt, quantity: 3, item_price: shirt.price)
oi4 = OrderItem.new(product: choco, quantity: 4, item_price: choco.price)
order2 = marie.orders.create(status:"I don't know", order_items: [oi3, oi4])

oi5 = OrderItem.new(product: choco, quantity: 10, item_price: choco.price)
oi6 = OrderItem.new(product: shirt, quantity: 1, item_price: shirt.price)
oi7 = OrderItem.new(product: banana, quantity: 30, item_price: banana.price)
order3 = marie.orders.create(status:"I don't know", order_items: [oi5, oi6, oi7])
