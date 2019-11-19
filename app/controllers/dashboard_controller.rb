class DashboardController < ApplicationController
  def show
    @paid = "1375€"
    @next_payment = "04-12-2019"
    @end = "31-12-2019"

    @subscription = Subscription.find_by(user_id:11)
    @subscription_options = SubscriptionOption.where(subscription_id: @subscription.id)
    @cart = []
    @options = []

    @subscription_options.each do |subscription_option|
      @options << subscription_option.option
      @cart << subscription_option.option.content
    end
  end
end
