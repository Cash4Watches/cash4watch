class CreateDocumnets < ActiveRecord::Migration[7.0]
  enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  def change
    create_table :documents, id: :uuid do |t|
      t.string :name
      t.references  :order, type: :uuid
      t.timestamps
    end
  end
end
