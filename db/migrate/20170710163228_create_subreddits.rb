class CreateSubreddits < ActiveRecord::Migration[5.1]
  def change
    create_table :subreddits do |t|
      t.string :title
      t.references :post, foreign_key: true
    end
  end
end
