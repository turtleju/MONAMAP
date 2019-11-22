class SubscriptionsController < ApplicationController
  def new
    @categories = Category.all
    @options = Option.all
    @producers = Producer.all
  end

  def create
    @subscription = Subscription.create(user: current_user)
    categories = params[:category]
    categories.each do |category, option|
      SubscriptionOption.create!(
        subscription_id: @subscription.id,
        option_id: option.to_i
      )
    end
    redirect_to dashboard_path
  end

  private

  def params_options
    params.require(:options).permit(:category)
  end

end
