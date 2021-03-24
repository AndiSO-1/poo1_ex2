class AddReferenceToProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :supplier, index: true
  end
end
