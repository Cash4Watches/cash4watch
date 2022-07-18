class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews, id: :uuid do |t|
      t.integer :rating
      t.string :comment
      t.references :user
      t.timestamps
    end
  end
end
