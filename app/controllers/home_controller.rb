class HomeController < ApplicationController
  def index
    @users = User.active
  end

  def list
    @users = User.all
  end
end
