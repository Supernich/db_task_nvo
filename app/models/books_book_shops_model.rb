class BooksBookShopsModel < ApplicationRecord
  self.primary_key = :book_id
  validates :book_id, :book_shop_id, presence: true

  has_many :books
  has_many :book_shops
end
