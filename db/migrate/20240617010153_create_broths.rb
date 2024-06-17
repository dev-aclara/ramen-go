class CreateBroths < ActiveRecord::Migration[7.1]
  def change
    create_table :broths do |t|

      t.timestamps
    end
  end
end
