class CreateLikes < ActiveRecord::Migration[8.1]
  def change
    create_table :likes do |t|
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
