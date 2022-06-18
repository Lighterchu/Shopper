class MakingProductTable < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name 
      t.integer :amount
      t.integer :price
      t.belongs_to :user 
      t.belongs_to :category
    end
  end
end
