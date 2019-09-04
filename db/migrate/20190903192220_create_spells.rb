class CreateSpells < ActiveRecord::Migration[6.0]
  def change
    create_table    :spells do |t|
      t.text        :cost_data
      t.text        :target_data
      t.text        :effect
      t.text        :description
      t.text        :effect_data
      t.string      :name
      t.string      :type
      t.references  :content_pack
      t.integer     :cost
      t.integer     :min_range
      t.integer     :max_range
      t.integer     :dark_level
      t.integer     :holy_level
      t.integer     :nature_level
      t.integer     :mind_level
      t.integer     :arcane_level
      t.integer     :war_level
      t.integer     :earth_level
      t.integer     :water_level
      t.integer     :air_level
      t.integer     :fire_level
      t.boolean     :select_school
      t.boolean     :quick_action

      t.timestamps

      t.index :name
    end
  end
end
