class Addtimestamptoalltables < ActiveRecord::Migration[5.1]
  def change
      add_column(:subreddits, :created_at, :datetime)
      add_column(:subreddits, :updated_at, :datetime)
      add_column(:comments, :created_at, :datetime)
      add_column(:comments, :updated_at, :datetime)
  end
end