class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :c1
      t.string :c2
      t.string :c3
      t.string :c4
      t.string :c5

      t.timestamps null: false
    end
  end
end
