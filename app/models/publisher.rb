class Publisher < ApplicationRecord
  validates :publisher_name, presence: true
  validates :publisher_name, uniqueness: true

  has_many :books

  has_many :publishers_book_shops_models
  has_many :book_shops, through: :publishers_book_shops_models
end
