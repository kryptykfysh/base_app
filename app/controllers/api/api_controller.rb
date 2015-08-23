# coding: utf-8

class Api::ApiController < ActionController::Base
  private

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      user_token = Api::Token.find_by(value: token)
      @user = user_token ? user_token.tokenable : nil
    end
  end
end
