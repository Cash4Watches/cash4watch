class CreateDocumnets < ActiveRecord::Migration[7.0]
  def change
    create_table :documnets do |t|
      t.string :name

      t.timestamps
    end
  end
end
