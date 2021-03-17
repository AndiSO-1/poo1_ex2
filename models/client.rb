class Client < ActiveRecord::Base
  has_many :orders
  has_many :ordered_products, lambda { distinct }, through: :orders, source: :products

  validates :firstname, :lastname, presence: true, length: {minimum: 2}

  def to_s
    "#{firstname} #{lastname}"
  end
end
