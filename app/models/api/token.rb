# coding: utf-8

class Api::Token < ActiveRecord::Base
  belongs_to :tokenable, polymorphic: true
  before_create { |x| x.value = x.generate_token }

  def generate_token
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless Api::Token.exists?(value: token)
    end
  end
end
