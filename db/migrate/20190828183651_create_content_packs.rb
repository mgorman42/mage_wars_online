class CreateContentPacks < ActiveRecord::Migration[6.0]
  def change
    create_table :content_packs do |t|
      t.string :name
      t.decimal :price, precision: 5, scale: 2

      t.timestamps

      t.index :name,  unique: true
    end
  end
end
