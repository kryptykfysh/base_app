# coding: utf-8

class ApiToken < ActiveRecord::Base
  belongs_to :api_tokenable, polymorphic: true
  before_create { |x| x.token = x.generate_token }

  def generate_token
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless ApiToken.exists?(token: token)
    end
  end
end
