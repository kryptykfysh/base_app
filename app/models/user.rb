# coding: utf-8

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :rememberable, :trackable, :omniauthable,
    omniauth_providers: [:google_oauth2]
  has_one :api_token, class_name: 'Api::Token', as: :tokenable, dependent: :destroy
  before_create :build_api_token

  def self.from_omniauth(access_token)
    Rails.logger.debug access_token.inspect
    data = access_token.info
    user = User.where(
      provider:         access_token.provider,
      uid:              access_token.uid
    ).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(
          first_name: data['first_name'],
          last_name: data['last_name'],
          image_url: data['image'],
          email: data['email'],
          provider: access_token.provider,
          uid: access_token.uid
        )
    end
    user
  end
end
