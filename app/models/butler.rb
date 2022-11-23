class Butler < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  
  has_one_attached :photo
end
