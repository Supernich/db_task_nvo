class BookShop < ApplicationRecord
  validates :book_shop_name, presence: true
  validates :book_shop_name, uniqueness: true

  has_many :books_book_shops_models
  has_many :books, through: :books_book_shops_models

  has_many :publishers_book_shops_models
  has_many :publishers, through: :publishers_book_shops_models
end
