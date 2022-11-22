class Review < ApplicationRecord
  belongs_to :butler
  belongs_to :user
end
