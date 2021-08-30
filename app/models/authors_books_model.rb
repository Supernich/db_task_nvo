class AuthorsBooksModel < ApplicationRecord
  validates :author_id, :book_id, presence: true
  validates :author_id, uniqueness: { scope: :book_id }

  belongs_to :author
  belongs_to :book
end
