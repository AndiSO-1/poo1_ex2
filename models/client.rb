class Client < ActiveRecord::Base
  has_many :orders
  has_many :comments
  has_many :ordered_products, lambda { distinct }, through: :orders, source: :products

end
