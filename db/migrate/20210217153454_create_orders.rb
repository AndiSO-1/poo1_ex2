class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.timestamp :shipped_at
      t.string :status

      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
