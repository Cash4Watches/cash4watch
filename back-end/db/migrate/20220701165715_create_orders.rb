class CreateOrders < ActiveRecord::Migration[7.0]
  enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  def change
    create_table :orders, id: :uuid do |t|
      t.string :brand_name
      t.string :model_number
      t.string :reference_number
      t.string :condition
      t.string :previous_service
      t.string :previous_polish
      t.boolean :papers
      t.string :included_items
      t.string :extra_comment
      t.references  :user
      t.timestamps
    end
  end
end
