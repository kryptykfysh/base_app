class HomeController < ApplicationController
  def index
    @user = user_signed_in? ? current_user : nil
    Rails.logger.debug @user.inspect
  end
end
