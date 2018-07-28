class Api::V1::MeController < ApplicationController
  before_action :authenticate

  def show
    render :show, locals:{user: @current_user}
  end

end
