class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :supplier
  has_many :order_items
  has_many :orders, through: :order_items

  scope :cheap, -> { where("products.price <= ?", 0.20) }

  def to_s
    "#{name} de la catégorie #{category}"
  end
end
