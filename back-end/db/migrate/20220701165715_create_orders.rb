class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :brand_name
      t.integer :model_number
      t.integer :reference_number
      t.string :condition
      t.string :previous_service
      t.string :previous_polish
      t.boolean :papers
      t.string :included_items
      t.string :extra_comment
      t.integer :user_id
      t.timestamps
    end
  end
end
