class CreateBookLists < ActiveRecord::Migration
  def change
    create_table :book_lists do |t|
      t.string :book_1
      t.string :book_2
      t.string :book_3
      t.string :book_4
      t.string :book_5
      t.references :user, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
