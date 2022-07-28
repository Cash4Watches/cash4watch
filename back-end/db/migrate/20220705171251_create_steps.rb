class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.integer :index
      t.string :title
      t.string :desc
      t.boolean :completed
      t.references :order
      t.timestamps
    end
  end
end
