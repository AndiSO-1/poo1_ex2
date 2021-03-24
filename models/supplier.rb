class Supplier < ActiveRecord::Base
  has_many :products
  has_many :categories,  lambda { distinct }, through: :products
  has_many :comments, as: :target


end
