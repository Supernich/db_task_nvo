class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :book_title
      t.belongs_to :publisher
    end
  end
end
