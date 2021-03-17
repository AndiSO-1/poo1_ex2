class Order < ActiveRecord::Base
  belongs_to :client
  has_many :order_items
  has_many :products, through: :order_items

  validates :order_items, presence: true
  validates_associated :order_items

  def to_s
    "La commande #{id} du #{created_at}"
  end

  def price
    order_items.sum(&:price)
  end
end
