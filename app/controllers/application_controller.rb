class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

    protected

    def after_sign_in_path_for(resource)
      # return the path based on resource
      if current_user.subscription_ids.blank?
        "/subscriptions/new"
      else
        "/dashboard"      
      end
    end

    # def after_sign_out_path_for(resource)
    #   # return the path based on resource
    # end

end
