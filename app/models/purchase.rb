class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :content_pack
end
