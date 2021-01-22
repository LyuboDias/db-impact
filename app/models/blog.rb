class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :header, use: :slugged
  has_one_attached :image
end
