class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :shine
      t.float :price
      t.integer :rarity
      t.string :color
      t.integer :faces
      t.integer :category_id
      t.string :images
      t.text :reviews

      t.timestamps
    end
  end
end
