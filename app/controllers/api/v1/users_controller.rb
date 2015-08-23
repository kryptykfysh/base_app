# coding: utf-8

class Api::V1::UsersController < Api::ApiController
  respond_to :json

  before_action :authenticate

  def show
    token = request.headers
    @user = User.find_by
  end
end
