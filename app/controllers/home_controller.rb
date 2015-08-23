# coding: utf-8

class HomeController < ApplicationController
  def index
    @api_token = current_user ? current_user.api_token.value : nil
  end
end
