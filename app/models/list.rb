class List < ApplicationRecord
  # the dependent: :destroy does this: When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews

  has_one_attached :photo

  validates :name, uniqueness: true
  validates :name, presence: true
end
