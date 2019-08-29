class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :user
      t.references :content_pack

      t.timestamps

      t.index [:user_id, :content_pack_id]
      t.index [:content_pack_id, :user_id]
    end
  end
end
