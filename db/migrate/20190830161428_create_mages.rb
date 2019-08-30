class CreateMages < ActiveRecord::Migration[6.0]
  def change
    create_table :mages do |t|
      t.references :user
      t.string :type
      t.string :name
      t.text   :description

      t.timestamps
    end
  end
end
