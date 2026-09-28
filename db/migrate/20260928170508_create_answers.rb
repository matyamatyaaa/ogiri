class CreateAnswers < ActiveRecord::Migration[8.1]
  def change
    create_table :answers do |t|
      t.text :body
      t.string :author
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
