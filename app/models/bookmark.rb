class Bookmark < ApplicationRecord
  # the dependent: :destroy does this: You can’t delete a movie if it is referenced in at least one bookmark.
  belongs_to :movie, dependent: :destroy
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id,
    message: "link between movie and list should be unique" }
end
