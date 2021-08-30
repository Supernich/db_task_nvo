class BooksBookShopsModel < ApplicationRecord
  validates :book_id, :book_shop_id, presence: true
  validates :book_id, uniqueness: { scope: :book_shop_id }

  has_many :books
  has_many :book_shops
end
