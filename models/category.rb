class Category < ActiveRecord::Base
  has_many :products

  has_many :order_items, through: :products
  has_many :orders, through: :order_items

  def to_s
    name
  end
end
