class AuthorsBooksModel < ApplicationRecord
  self.primary_key = :author_id
  validates :author_id, :book_id, presence: true

  belongs_to :author
  belongs_to :book
end
