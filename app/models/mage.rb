class Mage < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :spells

  validates :type, inclusion: {
    in: %w{Beastmaster Priestess Warlock Wizard},
    message: "Select a Class for your Mage"
  }

  validates_presence_of :name, :description
  validates_uniqueness_of :name, scope: :user_id

  attr_accessor :base_life, :base_channel, :base_attack
end
