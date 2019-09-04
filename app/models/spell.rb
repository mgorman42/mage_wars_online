class Spell < ApplicationRecord
  belongs_to :content_pack
  has_and_belongs_to_many :mages

  validates :type, inclusion: {
    in: %w{Equipment Creature Enchantment Incantation Attack},
    message: "Select a Type for your Spell"
  }

  validates_presence_of :name

  serialize :cost_data
  serialize :target_data
  serialize :effect_data
end
