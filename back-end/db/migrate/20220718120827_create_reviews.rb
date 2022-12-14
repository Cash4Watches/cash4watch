class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.boolean :approved, :default => false
      t.references :user
      t.timestamps
    end
  end
end
