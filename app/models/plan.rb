# t.string "title"
#     t.string "description"
#     t.string "picture"
#     t.string "location"
#     t.integer "price"
#     t.datetime "start_time"
#     t.datetime "end_time"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false

class Plan < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true

  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings
  has_one :type

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch
  pg_search_scope :search_by_title_and_location,
  against: [ :title, :location ],
  using: {
    tsearch: { prefix: true }
  }

end
