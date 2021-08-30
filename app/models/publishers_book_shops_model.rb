class PublishersBookShopsModel < ApplicationRecord
  self.primary_key = :publisher_id
  validates :publisher_id, :book_shop_id, presence: true

  has_many :publishers
  has_many :book_shops
end
