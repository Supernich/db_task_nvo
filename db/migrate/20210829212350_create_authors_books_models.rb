class CreateAuthorsBooksModels < ActiveRecord::Migration[6.1]
  def change
    create_table :authors_books_models, id: false do |t|
      t.belongs_to :author
      t.belongs_to :book
    end
  end
end
