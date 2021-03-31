class Order < ActiveRecord::Base
  belongs_to :client
  has_many :order_items
  has_many :products, through: :order_items
  has_many :categories, through: :products

  validates :order_items, presence: true
  validates_associated :order_items

  # before_create :set_shipped_at

  def to_s
    "La commande du #{created_at}"
  end

  def self.most_expensive
    all.max_by(&:price)
  end

  def price
    order_items.sum(&:price)
  end

  # protected
  #
  # # Modifie la valeur de l'achat
  # def set_shipped_at
  #   self.shipped_at Time.now
  # end
end
