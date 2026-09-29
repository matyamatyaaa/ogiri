class AddLevelToLikes < ActiveRecord::Migration[8.1]
  def change
    add_column :likes, :level, :string
  end
end
