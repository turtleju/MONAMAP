class PaymentsController < ApplicationController

  def new
    #@subscription = Subscription.find(params[:subscription_id])
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end

end
