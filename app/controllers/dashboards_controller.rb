class DashboardsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @week_options = current_user.options.where.not(id: current_user.given_gifts.pluck(:option_id))
  end

  def holidays
    @holidays = Holiday.new(user: current_user, begin: params[:begin], end: params[:end])

    if @holidays.save
      render partial: 'holidays', status: :created
      # render plain: 'toto', status: :created
    else
      head :bad_request
    end
  end

  def add_user_to_distrib
    current_user.update(distribution_id: Distribution.first.id)
  end
end
