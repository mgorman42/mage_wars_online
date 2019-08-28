class ContentPack < ApplicationRecord
  has_many :purchases
  has_many :users, through: :purchases

  validates_presence_of :name, :price
  validates_uniqueness_of :name
  validates :price, numericality: {greater_than_or_equal_to: 0}
end
