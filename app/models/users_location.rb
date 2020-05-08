class UsersLocation < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :lists, dependent: :destroy
end