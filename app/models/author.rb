class Author < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :authors_books_models
  has_many :books, through: :authors_books_models
end
