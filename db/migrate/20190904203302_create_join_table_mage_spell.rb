class CreateJoinTableMageSpell < ActiveRecord::Migration[6.0]
  def change
    create_join_table :mages, :spells do |t|
      t.index [:mage_id, :spell_id]
      t.index [:spell_id, :mage_id]
    end
  end
end
