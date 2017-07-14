# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170712214524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.bigint "user_id"
    t.bigint "post_id"
    t.bigint "comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["comment_id"], name: "index_comments_on_comment_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.integer "post_type"
    t.string "body"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subreddit_id"
    t.index ["subreddit_id"], name: "index_posts_on_subreddit_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "subreddits", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "total_subscribers", default: 0, null: false
  end

  create_table "subscriptions", id: false, force: :cascade do |t|
    t.bigint "subreddit_id", null: false
    t.bigint "user_id", null: false
    t.index ["subreddit_id"], name: "index_subscriptions_on_subreddit_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "comments"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "posts", "subreddits"
  add_foreign_key "posts", "users"
end
