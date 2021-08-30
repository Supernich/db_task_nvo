class PublishersBookShopsModel < ApplicationRecord
  validates :publisher_id, :book_shop_id, presence: true
  validates :publisher_id, uniqueness: { scope: :book_shop_id }

  has_many :publishers
  has_many :book_shops
end
