class AstroImage < ApplicationRecord
  has_one_attached :image
  validates :title, presence: true
  validates :description, length: { maximum: 200,
    too_long: "%{count} characters is the maximum allowed" }
end
