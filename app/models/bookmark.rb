class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :list_id, :movie_id, presence: true
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, scope: :list_id
end
