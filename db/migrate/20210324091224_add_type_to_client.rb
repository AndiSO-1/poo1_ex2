class AddTypeToClient < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :type, :string
    add_column :clients, :name, :string
  end
end
