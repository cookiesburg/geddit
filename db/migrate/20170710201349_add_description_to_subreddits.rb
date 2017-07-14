class AddDescriptionToSubreddits < ActiveRecord::Migration[5.1]
  def change
    add_column :subreddits, :description, :string
  end
end
