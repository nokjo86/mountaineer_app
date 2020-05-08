class Location < ApplicationRecord
  has_many :users_locations, dependent: :destroy
  has_many :users, through: :users_locations
  has_one_attached :image
end
