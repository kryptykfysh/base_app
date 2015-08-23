# coding: utf-8

class Api::V1::CurrentUserController < Api::ApiController
  respond_to :json
  before_action :authenticate

  def show
    token_value = request.headers['Authorization'].sub('Token token=', '')
    token = Api::Token.find_by(value: token_value)
    user = token.tokenable
    render json: {
      id:         user.id,
      first_name: user.first_name,
      last_name:  user.last_name,
      email:      user.email,
      image_url:  user.image_url,
      created_at: user.created_at,
      updated_at: user.updated_at
    }
  end
end
