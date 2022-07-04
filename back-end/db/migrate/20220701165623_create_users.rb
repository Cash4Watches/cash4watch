class CreateUsers < ActiveRecord::Migration[7.0]
  enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :password_digest
      t.string :email
      t.string :company
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.timestamps
    end
  end
end
