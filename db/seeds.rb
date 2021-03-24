require_relative '../models'

Individual.new(firstname: "Marie", lastname: "Luis").save
jean = Individual.create(firstname: "Jean", lastname: "Luck")

Company.new(name: "Food House").save
Company.new(name: "Sports").save

comment1 = Comment.create(content:"Bon produit, mashalah", client: jean)
comment2 = Comment.create(content:"Je les adorent", client: jean)

multiF = Supplier.new(name: "Multi F", comments: [comment2])
fBanane = Supplier.new(name: "F Banane")

food = Category.create(name: "Nourriture", description: "Miam Miam")
cloth = Category.create(name: "Habits", description: "Style")

choco = Product.create(name: "Chocolat", price: 2.00, category: food, supplier: multiF, comments: [comment1])
banana = Product.create(name: "Banane", price: 0.10, category: food, supplier: fBanane)
shirt = Product.create(name: "Short", price: 20.00, category: cloth, supplier: multiF)

oi1 = OrderItem.new(product: choco, quantity: 10, item_price: choco.price)
oi2 = OrderItem.create(product: banana, quantity: 100, item_price: banana.price)
order = jean.orders.create(status:"I don't know", order_items: [oi1, oi2])
