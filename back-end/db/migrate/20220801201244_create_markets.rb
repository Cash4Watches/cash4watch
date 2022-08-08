class CreateMarkets < ActiveRecord::Migration[7.0]
  def change
    create_table :markets do |t|
      t.string :name
      t.integer :price
      t.string :date
      t.timestamps
    end
  end
end
