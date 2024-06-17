class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :broth, null: false, foreign_key: true
      t.references :protein, null: false, foreign_key: true
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
