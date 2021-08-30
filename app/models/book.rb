class Book < ApplicationRecord
  validates :book_title, presence: true
  validates :book_title, uniqueness: true

  belongs_to :publisher

  has_many :authors_books_models
  has_many :authors, through: :authors_books_models

  has_many :books_book_shops_models
  has_many :book_shops, through: :books_book_shops_models

  scope :book_shops_list, lambda { |id|
    BookShop.select(:book_shop_name)
            .joins(:books_book_shops_models)
            .where('books_book_shops_models.book_id =?', id)

  }
  # SELECT book_shops.book_shop_name
  # FROM book_shops
  # JOIN books_book_shops_models
  # ON book_shops.id = books_book_shops_models.book_shop_id
  # WHERE books_book_shops_models.book_id = id
  # ;
end
