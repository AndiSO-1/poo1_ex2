class Category < ActiveRecord::Base
  has_many :products

  has_many :order_items, through: :products

  def to_s
    name
  end
end
