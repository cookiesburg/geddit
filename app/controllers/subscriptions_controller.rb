class SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.save
  end
  def subscription_params
    params.require(:subscription).permit(:user_id, :subreddit_id)
  end
end
