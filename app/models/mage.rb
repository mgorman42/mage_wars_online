class Mage < ApplicationRecord
  belongs_to :user

  validates :type, inclusion: {
    in: Mage.subclasses,
    message: "Select a Class for your Mage"
  }

  validates_presence_of :name, :description
  validates_uniqueness_of :name, scope: :user_id
end
