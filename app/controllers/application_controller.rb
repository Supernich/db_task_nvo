class ApplicationController < ActionController::Base
  def index
    book_shops = Book.book_shops_list(Book.first.id)
    book_shops.first.book_shop_name
  end
end
