class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    subreddit_id = @post.subreddit_id
    @subreddit = Subreddit.find(subreddit_id)
  end
end

