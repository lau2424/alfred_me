class Booking < ApplicationRecord
  belongs_to :butler
  belongs_to :user
end
