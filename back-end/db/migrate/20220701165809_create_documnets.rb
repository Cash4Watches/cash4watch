class CreateDocumnets < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.string :name
      t.integer :order_id
      t.timestamps
    end
  end
end
