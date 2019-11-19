class SubscriptionsController < ApplicationController
  def new
    @categories = Category.all
    @options = Option.all
    @producers = Producer.all
  end

  def create
    @subscription = Subscription.new(current_user.id)
    @options = [cat1_option1, cat2_option1, cat3_option2, cat5_option3]
    @options.each do |option|

      SubscriptionOption.new(
        subscription_id: @subscription.id
        option_id: option
      )

      if SubscriptionOption.save!
        redirect_to dashboard_path
      else
        render :new
      end
    end
  end

  private
  def
    params.require(:options).permit(:option_id)
  end
end
