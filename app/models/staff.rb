class Staff < ApplicationRecord
  extend FriendlyId
  friendly_id :f_name, use: :slugged
  has_one_attached :image
end
