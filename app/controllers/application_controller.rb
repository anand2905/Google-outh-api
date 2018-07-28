class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :set_default_response_format


  helper_method :current_user

  def authenticate
    redirect_to :login unless user_signed_in?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    !!current_user
  end

  # protected
  #   def set_default_response_format
  #     request.format = :json
  #   end

end
