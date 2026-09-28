class CreateTopics < ActiveRecord::Migration[8.1]
  def change
    create_table :topics do |t|
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
