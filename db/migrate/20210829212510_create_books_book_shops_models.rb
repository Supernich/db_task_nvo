class CreateBooksBookShopsModels < ActiveRecord::Migration[6.1]
  def change
    create_table :books_book_shops_models do |t|
      t.belongs_to :book
      t.belongs_to :book_shop
    end
  end
end
