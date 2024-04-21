class Galaxy < ApplicationRecord
  has_many :nebula

  attribute :name, :string
  attribute :size, :string
end
