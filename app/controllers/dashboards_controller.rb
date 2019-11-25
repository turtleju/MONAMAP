class DashboardsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show

    # @paid = "1375€"
    # @next_payment = "04-12-2019"
    # @end = "31-12-2019"

    # @subscription = Subscription.find_by(user_id: 28)
    # @subscription_options = SubscriptionOption.where(subscription_id: @subscription.id)
    # @cart = []
    # @options = []

    # @subscription_options.each do |subscription_option|
    #   @options << subscription_option.option
    #   @cart << subscription_option.option.content
    # end
  end

  def add_user_to_distrib
    current_user.update(distribution_id: Distribution.first.id)
  end
end
