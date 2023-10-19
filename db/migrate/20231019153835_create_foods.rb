class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image
      t.string :description
      t.decimal :price
      t.integer :quantity
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
