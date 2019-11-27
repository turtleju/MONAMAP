class AmapiensController < ApplicationController
  def show
    @gifts = Gift.all
  end
  
  def create
    @option = Option.find(params[:option])
    @gift = Gift.create!(option: @option, giver: current_user, date: date_of_next("Wednesday"))
    redirect_to amapiens_path
  end

  def update
    # @gift = Gift.find(params[:gift])
    Gift.update(params[:gift], receiver: current_user)
    redirect_to dashboard_path
  end

  private

  def date_of_next(day)
    date  = Date.parse(day)
    delta = date > Date.today ? 0 : 7
    date + delta
  end

end
