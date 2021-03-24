class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content

      t.references :client, foreign_key: true

      t.references :target, polymorphic: true

      t.timestamps
    end
  end
end
