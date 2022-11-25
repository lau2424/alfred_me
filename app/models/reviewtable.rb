class Reviewtable < ApplicationRecord
  belongs_to :user
  belongs_to :butler
  validates :content, presence: true

end
