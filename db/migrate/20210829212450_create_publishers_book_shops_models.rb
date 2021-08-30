class CreatePublishersBookShopsModels < ActiveRecord::Migration[6.1]
  def change
    create_table :publishers_book_shops_models do |t|
      t.belongs_to :publisher
      t.belongs_to :book_shop
    end
  end
end
