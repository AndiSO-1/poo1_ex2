class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  validates :order, presence: true
  validates :product, presence: true

  validates :quantity,
  numericality: {
    greater_than: 0,
    only_integer: true
  }

  before_create :set_item_price

  scope :bulk, ->(quantity = 100) { where('quantity >= ?', quantity) }

  # Calcul le prix total
  def price
    quantity * item_price
  end

  protected

  # Rempli le prix de base avec celui du produit
  def set_item_price
    self.item_price ||= product.price
  end
end
