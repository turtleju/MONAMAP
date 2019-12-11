class SubscriptionsController < ApplicationController
  def new
    @categories = Category.all
    @options = Option.all
    @producers = Producer.all
    @producers = Producer.geocoded

    @markers = @producers.map do |producer|
      {
        lat: producer.latitude,
        lng: producer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { producer: producer }),
        image_url: helpers.asset_url('custom-pin.png')
      }
    end
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

    create_order_and_checkout_session
    # raise
    redirect_to new_payment_path(order_id: @order.id)
    # redirect_to orders_path
  end

  private

  def params_options
    params.require(:options).permit(:categories)
  end

  def create_order_and_checkout_session
    @order  = Order.create!(subscription_id: @subscription.id, amount_cents: @subscription.price_cents * 12, state: 'pending')
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,
      line_items: [
       #options.each
      {
        name: "Paiement de votre abonnement pour le 1er mois",
        # images: [teddy.photo_url],
        amount: @subscription.price_cents,
        currency: 'eur',
        quantity: 1
        }],
        success_url: dashboard_url,
        cancel_url: subscriptions_url
    )

    @order.update(checkout_session_id: session.id)
  end
end
