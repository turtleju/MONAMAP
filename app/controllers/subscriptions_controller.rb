class SubscriptionsController < ApplicationController
  def new
    @categories = Category.all
    @options = Option.all
    @producers = Producer.all
  end

  def create
    raise
    @subscription = Subscription.create!(current_user.id)
    categories = params[:category]
    categories.each do |category, option|
      SubscriptionOption.create!(
        subscription_id: @subscription.id,
        option_id: option.id
      )
    end
    
    redirect_to dashboard_path
  end

  private

  def params_options
    params.require(:options).permit(:category)
  end

end
