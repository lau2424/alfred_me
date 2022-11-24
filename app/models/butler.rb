class Butler < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_category_and_address,
    against: %i[category address],
    using: {
      tsearch: { prefix: true }
  }
end
