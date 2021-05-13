class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  validates :movie, :list, presence: true
  validates :movie, uniqueness: { scope: :list, message: "should have just one couple movie/list" }
end
