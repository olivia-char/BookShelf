class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :result
      t.references :user, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
