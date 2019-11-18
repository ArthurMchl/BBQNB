class CreateBarbecues < ActiveRecord::Migration[5.2]
  def change
    create_table :barbecues do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :price
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
