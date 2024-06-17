class CreateBroths < ActiveRecord::Migration[7.1]
  def change
    create_table :broths do |t|
      t.string :name, null: false
      t.string :description
      t.decimal :price, precision: 10, scale: 2, null: false
      t.string :image_active, null: false
      t.string :image_inactive, null: false

      t.timestamps
    end
  end
end
