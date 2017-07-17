class SubredditsController < ApplicationController
    def index
        @subreddits = Subreddit.all
    end

    def show
        @subreddit = Subreddit.find(params[:id])
    end

    def new
        @subreddit = Subreddit.new
    end
    
    def create
      @subreddit = Subreddit.new(user_params)
      Subscription.create(sub_params)
      @subreddit.save
    end

private

    def user_params
      params.require(:subreddit).permit(:title, :description)
    end

    def sub_params
      params.require(:subscription).permit(:subreddit_id, :user_id)
    end
end


