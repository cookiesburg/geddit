class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.integer :post_type
      t.string :body
      t.string :photo

      t.timestamps
    end
  end
end
