class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :confirm_token
      t.boolean :email_confirmed

      t.timestamps
    end
  end
end
