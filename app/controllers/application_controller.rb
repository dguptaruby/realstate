# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |_exception|
    redirect_to root_url
    flash[:alert] = 'Access denied!'
    # if current_user.user_role?

    #   # redirect_to 'root_url', alert: 'You are not able to access this feature.'
    # end
    # # render 403, etc.
  end
end
