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
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true

  belongs_to :user
  has_many :reviews, dependent: :destroy
end

