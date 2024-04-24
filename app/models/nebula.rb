class Nebula < ApplicationRecord
  belongs_to :galaxy
  has_one_attached :photo
  attribute :name, :string
  attribute :distance, :float
  attribute :brightness, :integer

  broadcasts_refreshes

  # Future method to implement
  def visible_from_earth?
    distance < 1000 # Determined threshold for visibility in km, for example Orion
  end
end
