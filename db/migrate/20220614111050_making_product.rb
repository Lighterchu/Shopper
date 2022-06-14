class MakingProduct < ActiveRecord::Migration[6.1]
  def change
      create_table :products do |t|
        t.string :name 
        t.integer :amount
        t.integer :price
      end
    end
end
